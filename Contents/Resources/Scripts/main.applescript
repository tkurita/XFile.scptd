(* Copyright (C) 2007, 2008, 2009, 2010, 2011, 2012 Tetsuro KURITA


This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/> *)

property name : "XFile"
property version : "1.5"

property PathInfo : module

(*!@title XFile Reference

* Version : 1.5
* Author : Tetsuro KURITA ((<tkurita@mac.com>))

@references
PathInfo || help:openbook='PathInfo Help'
*)

property _prefer_posix : true

on prefer_posix(bool)
	set my _prefer_posix to bool
end prefer_posix

(*!@group Constractors
Making a new instance with a reference to a file from the class object.
*)

(*!@abstruct 
Make a XFile instance with a file reference
@description
HFS/POSIX path, alias and file URL can be accepted as file specification.
@param file_ref (alias or Unicode text) : a HFS/POSIX path, alias or File URL
@result script object : a new instance of XFile
*)
on make_with(file_ref)
	set is_hfs to false
	if class of file_ref is in {text, Unicode text, string} then
		set is_hfs to (file_ref does not start with "/")
	end if
	if is_hfs then
		set path_info to PathInfo's make_with_hfs(file_ref)
	else if my _prefer_posix then
		set path_info to PathInfo's make_with_posix(file_ref)
	else
		set path_info to PathInfo's make_with_hfs(file_ref)
	end if
	
	return make_with_pathinfo(path_info)
end make_with

(*!@abstruct
Make a new instance with a ((<PathInfo>)) instance.
@param path_info (script) : a ((<PathInfo>)) instance.
@result script object : a new instance of XFile
 *)
on make_with_pathinfo(path_info)
	set a_parent to me
	script XFile
		property parent : a_parent
		property _pathInfo : path_info
		property _infoRecord : missing value
		property _prefer_posix : path_info's is_posix()
		property _is_symlink : missing value
	end script
	return XFile
end make_with_pathinfo


(*!@group Make a New Instance with Changing Contents of an Instance


Making a new XFile instance with changing a part of the exisiting instance.
*)

(*!@abstruct
Make a new instance with changing file name of the instance
@param a_name (Unicode text or string) : a file name
@result script object : a new instance of XFile
*)
on change_name(a_name)
	set path_info to my _pathInfo's change_name(a_name)
	return make_with_pathinfo(path_info)
end change_name

(*!@abstruct
Make a new instance with changing folder of the instance
@param a_name (alias, Unicode text, file URL, file specification) : a reference to folder
@result script object : a new instance of XFile
*)
on change_folder(folder_ref)
	set path_info to my _pathInfo's change_folder(folder_ref)
	return make_with_pathinfo(path_info)
end change_folder

(*!@abstruct
Make a new instance with changing path extension of the instance
@param a_name (Unicode text or string) :a path extension, should not start with a dot ".".
<!-- end locale -->
@result script object : a new instance of XFile
*)
on change_path_extension(a_suffix)
	return make_with_pathinfo(my _pathInfo's change_path_extension(a_suffix))
end change_path_extension

(*!@group Getting a File Reference form an Instance


Obtain a reference to a file which XFile reference to.
*)

(*!@abstruct
Obtain a reference to a file as alias class
@description
An error raise, If a file or a folder does not exists.
@result alias
*)
on as_alias()
	check_existance_raising_error()
	return my _pathInfo's as_alias()
end as_alias

(*!@abstruct
Obtain a reference to a file as File URL class
@result File URL
*)
on as_furl()
	return my _pathInfo's as_furl()
end as_furl

(*!@abstruct 
Obtain HFS path
@result text
*)
on hfs_path()
	return my _pathInfo's hfs_path()
end hfs_path

(*!@abstruct 
Obtain POSIX path
@result text
*)
on posix_path()
	return my _pathInfo's posix_path()
end posix_path

(*!@abstruct
Obtain POSIX path which does not end with "/".
@result text
*)
on normalized_posix_path()
	return my _pathInfo's normalized_posix_path()
end normalized_posix_path

on quoted_path()
	return my _pathInfo's posix_path()'s quoted form
end quoted_path

(*!@group Working with Attributes *)

(*!@abstruct
Check whether the item is a folder or not.
@result boolean : true if the the item is folder.
*)
on is_folder()
	(*
	if item_ref()'s class is not alias then
		check_existance_raising_error()
		update_pathinfo()
	end if
	return my _pathInfo's is_folder()
	*)
	set info_rec to info()
	return folder of info_rec
end is_folder

(*!@abstruct
Check whether the item is a package or not.
@result boolean : true if the item is a package.
*)
on is_package()
	set info_rec to info()
	return package folder of info_rec
end is_package

(*!@abstruct
Check whether the item is an alias file or not.
@result boolean : true if the item is an alias file.
*)
on is_alias()
	set info_rec to info()
	return alias of info_rec
end is_alias

(*!@abstruct
Check whether the item is a symbolic link or not.
@result boolean : true if the item is a symbolic link.
*)
on is_symlink()
	if my _is_symlink is missing value then
		try
			do shell script "test -L " & quoted_path()
			set my _is_symlink to true
		on error
			set my _is_symlink to false
		end try
	end if
	return my _is_symlink
end is_symlink

(*!@abstruct
Check whether the item is visible or not.
@result boolean : true if the item is visible.
*)
on is_visible()
	set info_rec to info()
	return visible of info_rec
end is_visible

on type_identifier()
	set info_rec to info()
	return type identifier of info_rec
end type_identifier

(*!@abstruct
Set creator code and type code to the item.
@param creator_code (text) : creator code which consists of 4 characters
<!-- end locale -->
@param type_code (text) : type code which consists of 4 characters
*)
on set_types(creator_code, type_code)
	if not is_folder() then
		set a_file to as_alias()
		tell application "Finder"
			set creator type of a_file to creator_code
			set file type of a_file to type_code
		end tell
		set my _infoRecord to missing value
	end if
end set_types

(*!@abstruct
Obtain file information.
@description
Do &quot;info for&quot; command for the item.
The result is cached and same value is returned at next calling info().
The size of the target will not be included.
@result file infomation(record) : a result of info for command.
*)
on info()
	if my _infoRecord is missing value then
		check_existance_raising_error()
		set my _infoRecord to info for as_furl() without size
	end if
	return my _infoRecord
end info

(*!@abstruct
Obtain file information including its size.
@description
Do &quot;info for&quot; command for the item with &quot;size&quot; option. 
The result is cached and same value is returned at next calling info_with_size() or ((<info>))().
@result file infomation(record) : a result of info for command.
*)
on info_with_size()
	if my _infoRecord is missing value then
		check_existance_raising_error()
		set my _infoRecord to info for as_furl() with size
	else if size of my _infoRecord is missing value then
		set my _infoRecord to info for as_furl() with size
	end if
	return my _infoRecord
end info_with_size

(*!@abstruct
Obtain file information again.
@description
Do "info for" command for the item and reset the cache of ((<info>))().
@result file infomation(record) : a result of info for command.
*)
on re_info()
	if (my _infoRecord is not missing value) and ¬
		(size of my _infoRecord is not missing value) then
		set my _infoRecord to info for as_furl() with size
	else
		set my _infoRecord to info for as_furl() without size
	end if
	return my _infoRecord
end re_info

(*!@group Obtain Path Infomation *)

(*!@abstruct 
Obtain the name of the item referenced by the instance 
@result text
*)
on item_name()
	return my _pathInfo's item_name()
end item_name

(*!@abstruct 
Obtain the base name (a name which does not include path extension) of the item referenced by the instance.
@result text
*)
on basename()
	return my _pathInfo's basename()
end basename

(*!@abstruct 
Obtain path extension　of the item referenced by the instance.
@result text
*)
on path_extension()
	return my _pathInfo's path_extension()
end path_extension

(*!@group Working with a Bundle *)

(*!@abstruct
Obtain an item which is in the bundle resource folder.
@description
This method can be call to a bundle.
@param resource_name (text) : a resource name
@result script object : a XFile instance
*)
on bundle_resource(resource_name)
	return make_with(path to resource resource_name in bundle (as_alias()))
end bundle_resource

(*!@abstruct
Obtain a reference to Info.plist of the bundle.
@result script object : a XFile instance
*)
on bundle_InfoPlist()
	return child_posix("Contents/Info.plist")
end bundle_InfoPlist

on bundle_resources_folder()
	return child_posix("Contents/Resources/")
end bundle_resources_folder

(*!@group File Manipulations *)

(*!@abstruct
Check whether the item referenced by the instance exists or not.
@description
A file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.
@result boolean : true if the item exists.
*)
on item_exists()
	return my _pathInfo's item_exists()
end item_exists

(*!@abstruct
Check whether the item referenced by the instance exists or not.
@description
The internal file reference will not be changed unlike ((<item_exists>)).
@result boolean : true if the item exists.
*)
on item_exists_without_update()
	return my _pathInfo's item_exists_without_update()
end item_exists_without_update

(*!@abstruct
Synonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.
@result boolean : true if the item exists.
*)
on exists
	return item_exists()
end exists

(*!@abstruct
Rename an item which referenced by the XFile instance.
@result boolean : true if succeded.
*)
on rename_to(new_name)
	if not (item_exists()) then
		return false
	end if
	
	tell application "Finder"
		set name of my item_ref() to new_name
	end tell
	
	set my _infoRecord to missing value
	my _pathInfo's set_name(new_name)
	return true
end rename_to

(*!@abstruct 
Copy the item to specified location
@description
Same name item in the destination is replaced.
@param a_destination (script object or text) : 
a XFile instance referencing the copy destination or a relative path.
@result script object : a XFile instance referencing copied item.
*)
on copy_to(a_destination)
	return copy_with_opts(a_destination, missing value)
end copy_to

(*!
@abstruct 
Copy the item to specified location with options.
@description
By passing options (a value of a record) as a second parameter, you can change the behavior of copying.
The format of the option record is {with_replaceing : boolean, with_admin:boolean, with_replacing: boolean}. 
You can ommit labels you don't required.
* with_replacing : Copying with replacing the destination. The default is true.
* with_admin : Copying with administrator privileges. The default is false.
* with_removing : Copying after removing the destination. The default is false.
@param a_destination (script object) : a XFile instance referencing the copy destination or a relative path.

@param opts ( record): a XFile instance referencing the copy destination.
@result script object : a XFile instance referencing copied item.
*)
on copy_with_opts(a_destination, opts)
	-- cp : if source and destination are folders and the path of the source ends with "/", 
	--         cp command contents of the source copy under the destination folder like ditto.
	--        The endding "/" of the source path should be removed for stable result.
	--        Is the support  of ditto not required ?
	set w_replacing to true
	set w_admin to false
	set w_removing to false
	set command to "cp" -- or "ditto"
	
	if class of opts is record then
		try
			set w_replacing to with_replacing of opts
		end try
		try
			set w_admin to with_admin of opts
		end try
		try
			set w_removing to with_removing of opts
		end try
		try
			if ditto of opts then
				set command to "ditto"
			end if
		end try
	end if
	
	if class of a_destination is in {text, Unicode text, string} then
		set a_destination to parent_folder()'s child(a_destination)
	end if
	
	if command is "cp" then
		set com_opts to "-Rp"
		if w_replacing then
			set com_opts to com_opts & "f"
		end if
	else if command is "ditto" then
		set com_opts to "--rsrc"
	end if
	set is_folder_to to false
	if a_destination's item_exists() then
		if (w_removing) then
			a_destination's remove()
		else
			if command is "cp" then
				set is_folder_to to a_destination's is_folder()
			end if
		end if
	end if
	
	set destination_path to quoted form of a_destination's normalized_posix_path()
	set source_path to quoted form of normalized_posix_path()
	set a_command to command & space & com_opts & space & source_path & space & destination_path
	do shell script a_command administrator privileges w_admin
	if is_folder_to then
		return a_destination's child(item_name())
	end if
	return a_destination
end copy_with_opts

on finder_copy_to(a_destination, with_replacing)
	set destination to a_destination's as_alias()
	set source_alias to as_alias()
	tell application "Finder"
		set new_item to (duplicate source_alias to destination replacing with_replacing) as alias
	end tell
	return make_with(new_item)
end finder_copy_to

(*!@abstruct
Move the item referenced by the instance to specified location.
@param a_destination (script object) : a XFile instance referencing the destination to move.
@result boolean : true if success.
*)
on move_to(a_destination)
	item_exists() -- even if the item exists, broken symbolic file will return false.
	set destination_path to a_destination's quoted_path()
	set source_path to quoted_path()
	try
		do shell script "mv -f " & source_path & space & destination_path
	on error msg
		tell AppleScript to log msg
		return false
	end try
	return true
end move_to

(*!@abstruct
Resolving original item of a alias file.
@description
If the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.
@result script object or missing value
*)
on resolve_alias()
	if is_symlink() then
		set x_original to deep_copy()
		if x_original's item_exists() then
			return x_original
		else
			return missing value
		end if
	end if
	
	set info_rec to info()
	if alias of info_rec then
		try
			tell application "Finder"
				set original_item to (original item of (my as_alias())) as alias
			end tell
		on error errmsg
			return missing value
		end try
		return make_with(original_item)
	else
		return a reference to me
	end if
end resolve_alias

(*!@abstruct
Put into trash.
*)
on into_trash()
	set a_file to as_alias()
	tell application "Finder"
		delete a_file
	end tell
	update_pathinfo()
end into_trash

(*!@abstruct
Remove the item referd from the target XFile instance.
@result script object : me
*)
on remove()
	set a_file to quoted form of posix_path()
	set a_path to my _pathInfo's as_text()
	do shell script "rm -r " & a_file
	set my _pathInfo's _item_ref to a_path
	set my _infoRecord to missing value
	return me
end remove

(*!@group Making subfolders *)

(*!@abstruct
Make a sub folder.
@description
missing value will is returned, if failing to make a new folder
@param folder_name (text) : a name of new folder.
@result script object or missing value : a XFile instance of newly created folder.
*)
on make_folder(folder_name)
	if not (item_exists()) then
		return missing value
	end if
	
	set new_folder to child(folder_name)
	return new_folder's make_path({})
end make_folder

(*!@abstruct
Make folders which indicating the path of the XFile instance.
@description
Using a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.
@result script object or missing value : a XFile instance of newly created folder.
*)
on make_path(opts)
	set w_admin to false
	if class of opts is record then
		set w_admin to with_admin of opts
	end if
	if item_exists() then
		if is_folder() then
			return me
		else
			missing value
		end if
	end if
	do shell script "mkdir -p " & (quoted form of posix_path()) administrator privileges w_admin
	if item_exists() then return me
	return missing value
end make_path


(*!@group Reading and Writing File Contents *)

(*!@abstruct
Read file contents as UTF-8 encoded text.
@result Unicode text (UTF-8)
*)
on read_as_utf8()
	check_existance_raising_error()
	return read (as_alias()) as «class utf8»
end read_as_utf8

(*!@abstruct
Write data into the file as UTF-8 encoded text.
@param a_data (text) : data to write into the file.
*)
on write_as_utf8(a_data)
	set output to open for access as_furl() with write permission
	set eof output to 0
	write a_data to output as «class utf8»
	close access output
end write_as_utf8

(*!@group Parent and Children *)

(*!@abstruct
Obtain a folder containing the item referenced by the XFile instance.
@result script object : a XFile instance of the parent folder.
*)
on parent_folder()
	return make_with_pathinfo(my _pathInfo's parent_folder())
end parent_folder

(*!@abstruct
Obtain an item in the folder with specifying a sub path from the target.
@description
If this methods is sent to non exsisting folder, missing value is returend.
@param suppath(text) :a sub path to obtain.
@result script object or missing value : a XFile instance
*)
on child(subpath)
	if item_exists_without_update() then
		return make_with_pathinfo(my _pathInfo's child(subpath))
	else
		return missing value
	end if
end child

on child_posix(subpath)
	if item_exists() then
		set a_path to posix_path()
		set a_path to a_path & subpath
		return make_with(a_path)
	else
		return missing value
	end if
end child_posix


(*!@abstruct
Obtain a XFile instance reference unique name item in the folder.
@description
If the instance's file reference is not a folder, missing value will be returned.
If this methods is sent to non existing item, error number 1350 will be raised.
@param a_candidate(text or list) :
A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.
@result script object : a XFile instance
*)
on unique_child(a_candidate)
	if not is_folder() then
		return missing value
	end if
	set {a_basename, a_suffix} to PathInfo's split_name(a_candidate)
	if a_suffix is missing value then
		set a_suffix to ""
	else
		set a_suffix to "." & a_suffix
	end if
	set i to 2
	set escape_suffix to ""
	repeat
		set a_child to child(a_basename & escape_suffix & a_suffix)
		if a_child's item_exists() then
			set escape_suffix to space & (i as Unicode text)
			set i to i + 1
		else
			exit repeat
		end if
	end repeat
	return a_child
end unique_child

on list_children()
	return list folder of as_furl()
end list_children

(*!
@abstruct 
Call do handler of given script object with each item in the folder as an argument.
@description 
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. 
Each XFile instance in the target folder is passed to the &quot;do&quot; handler.
The do handler must return true or false. When the do handler return false, the process is stoped immediately.
@param a_script(script object) : 
must have a do handler which require only argument. The do handler must return boolean.
*)
on each(a_script)
	set a_list to list_children()
	script ListWrapper
		property contents : a_list
	end script
	
	repeat with n from 1 to count a_list
		set x_item to child(item n of contents of ListWrapper)
		if not a_script's do(x_item) then
			exit repeat
		end if
	end repeat
end each

(*!@group Working with Shell Commands *)

(*!@abstruct
Run passed shell command taking the target as an argument.
@description
&quot;%s&quot; in the command will be replaced with the target's path.
@param a_command(text) : shell command including %s.
@result text : standard output of the shell command
*)
on perform_shell(a_command)
	set a_path to normalized_posix_path()'s quoted form's quoted form
	return do shell script "eval $(printf " & a_command's quoted form & space & a_path & ")"
end perform_shell

(*!@abstruct
Run test command taking the target as an argument.
@param option(text) : 
An option to passed to the test command. See the man page of the test command.
@result boolean : true if test command successfully exits.
*)
on shell_test(option)
	try
		do shell script "test " & option & space & quoted_path()
	on error
		return false
	end try
	return true
end shell_test

(*== private **)

on deep_copy()
	return make_with_pathinfo(my _pathInfo's clone())
end deep_copy

on item_ref()
	return my _pathInfo's item_ref()
end item_ref

on check_existance_raising_error()
	if not (my _pathInfo's item_exists_without_update()) then
		error "item " & quoted form of (my _pathInfo's as_text()) & " does not exist." number 1350
	end if
end check_existance_raising_error

on update_pathinfo()
	set my _pathInfo to PathInfo's make_with_opts(my _pathInfo's item_ref(), {prefering_posix:my _pathInfo's is_posix()})
	return my _pathInfo
end update_pathinfo

on dump()
	return posix_path()
end dump

on log
	continue log dump()
end log

on debug()
	boot (module loader) for me
	set a_path to POSIX file "/Users/tkurita/Desktop/kasokuki.pdf"
	set a_xfile to make_with(a_path)
	--return a_result's change_path_extension(missing value)'s posix_path()
	set new_named_file to a_xfile's parent_folder()'s unique_child("kasokuki-V1-No3-2004-p216.pdf")
	log new_named_file's item_name()
end debug

on run
	--return debug()
	try
		show helpbook (path to me) with recovering InfoPlist
	on error msg number errno
		display alert (msg & return & errno)
	end try
end run

