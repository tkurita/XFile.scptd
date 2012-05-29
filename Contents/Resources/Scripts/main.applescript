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
property version : "1.5b"

property PathInfo : module

(*!@title XFile Reference

* Version : 1.5b
* Author : Tetsuro KURITA ((<tkurita@mac.com>))

@references
PathInfo || help:openbook='PathInfo Help'
*)

property _prefer_posix : true

on prefer_posix(bool)
	set my _prefer_posix to bool
end prefer_posix

(*!@group Constractors
<!-- begin locale ja -->
クラスオブジェクトから指定したファイルを参照した XFile のインスタンスを作ります。
<!-- begin locale en -->
Making a new instance with a reference to a file from a class object.
<!-- end locale -->
*)

(*!@abstruct 
<!-- begin locale ja -->
ファイルの参照から XFile のインスタンスを作ります。
<!-- begin locale en -->
Make a XFile instance with a file reference
<!-- end locale -->
@description
<!-- begin locale ja -->
ファイルへの参照として、HFS/POSIX 形式のパス文字列もしくはalias, File URLを受け付けます。

<!-- begin locale en -->
HFS/POSIX path, alias and file URL can be accepted as file specification.

<!-- end locale -->
@param file_ref (alias or Unicode text) : 
<!-- begin locale ja -->HFS/POSIX 形式のパス文字列もしくはalias、File URL
<!-- begin locale en -->a HFS/POSIX path, alias or File URL
<!-- end locale -->
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
<!-- begin locale ja -->
((<PathInfo>)) の返り値から XFile のインスタンスを生成します。
<!-- begin locale en -->
Make a new instance with a record returned by ((<PathInfo>))
<!-- end locale -->
@param path_record (record) :
<!-- begin locale ja -->PathInfo の返り値
<!-- begin locale en -->a result of PathInfo
<!-- end locale -->
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
<!-- begin locale ja -->
既存のインスタンスの一部の内容を変更して、新しいインスタンスを生成します。
<!-- begin locale en -->
Making a new XFile instance with changing a part of the exisiting instance.
<!-- end locale -->
*)

(*!@abstruct
<!-- begin locale ja -->
参照するファイルのファイル名を変更した XFile をつくります。
<!-- begin locale en -->
Make a new instance with changing file name of the instance
<!-- end locale -->
@param a_name (Unicode text or string) : 
<!-- begin locale ja -->参照したいファイル名
<!-- begin locale en -->a file name
<!-- end locale -->
@result script object : a new instance of XFile
*)
on change_name(a_name)
	set path_info to my _pathInfo's change_name(a_name)
	return make_with_pathinfo(path_info)
end change_name

(*!@abstruct
<!-- begin locale ja -->
参照するファイルのフォルダを変更した XFile をつくります。
<!-- begin locale en -->
Make a new instance with changing folder of the instance
<!-- end locale -->
@param a_name (alias, Unicode text, file URL, file specification) :
<!-- begin locale ja -->フォルダへの参照
<!-- begin locale en -->a reference to folder
<!-- end locale -->
@result script object : a new instance of XFile
*)
on change_folder(folder_ref)
	set path_info to my _pathInfo's change_folder(folder_ref)
	return make_with_pathinfo(path_info)
end change_folder

(*!@abstruct
<!-- begin locale ja -->
参照するファイルの拡張子を変更した XFile をつくります。
<!-- begin locale en -->
Make a new instance with changing path extension of the instance
<!-- end locale -->
@param a_name (Unicode text or string) :
<!-- begin locale ja -->ファイルの拡張子。ドッド "." で始まっている必要があります。
<!-- begin locale en -->path extension, should be starts with a dot ".".
<!-- end locale -->
@result script object : a new instance of XFile
*)
on change_path_extension(a_suffix)
	return make_with_pathinfo(my _pathInfo's change_path_extension(a_suffix))
end change_path_extension

(*!@group Getting a File Reference form an Instance
<!-- begin locale ja -->
XFile インスタンスが参照しているファイルへの参照を取得します。
<!-- begin locale en -->
Obtain a reference to a file which XFile reference to.
<!-- end locale -->
*)

(*!@abstruct
<!-- begin locale ja -->
エイリアスを取得します。
<!-- begin locale en -->
Obtain a reference to a file as alias class
<!-- end locale -->
@description
<!-- begin locale ja -->
存在しないファイルもしくはフォルダに対して実行するとエラーが発生します。
<!-- begin locale en -->
An error raise, If a file or a folder does not exists.
<!-- end locale -->
@result alias
*)
on as_alias()
	check_existance_raising_error()
	return my _pathInfo's as_alias()
end as_alias

(*!@abstruct
<!-- begin locale ja -->
File URL クラスのファイル参照を取得します。
<!-- begin locale en -->
Obtain a reference to a file as File URL class
<!-- end locale -->
<!-- end locale -->
@result File URL
*)
on as_furl()
	return my _pathInfo's as_furl()
end as_furl

(*!@abstruct 
<!-- begin locale ja -->
HFS 形式のパスを取得します。
<!-- begin locale en -->
Obtain HFS path
<!-- end locale -->
@result Unicode text
*)
on hfs_path()
	return my _pathInfo's hfs_path()
end hfs_path

(*!@abstruct 
<!-- begin locale ja -->
POSIX形式のパスを取得します。
<!-- begin locale en -->
Obtain POSIX path
<!-- end locale -->
@result Unicode text
*)
on posix_path()
	return my _pathInfo's posix_path()
end posix_path

(*!@abstruct
<!-- begin locale ja -->
パス文字列の最後の"/"を削除した POSIX パスを取得します。
<!-- begin locale en -->
Obtain POSIX path which does not end with "/".
<!-- end locale -->
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
<!-- begin locale ja -->
フォルダであるかどうか調べます。
<!-- begin locale en -->
Check whether the item is a folder or not.
<!-- end locale -->
@result boolean : 
<!-- begin locale ja -->フォルダであれば true 
<!-- begin locale en -->true if the the item is folder.<!-- end locale -->
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
<!-- begin locale ja -->
パッケージであるかどうか調べます。
<!-- begin locale en -->
Check whether the item is a package or not.
<!-- end locale -->
@result boolean :
<!-- begin locale ja -->パッケージであれば true
<!-- begin locale en -->true if the item is a package.<!-- end locale -->
*)
on is_package()
	set info_rec to info()
	return package folder of info_rec
end is_package

(*!@abstruct
<!-- begin locale ja -->
エイリアスファイルであるかどうか調べます。
<!-- begin locale en -->
Check whether the item is an alias file or not.
<!-- end locale -->
@result boolean :
<!-- begin locale ja -->エイリアスファイルであれば true
<!-- begin locale en -->true if the item is an alias file.<!-- end locale -->
*)
on is_alias()
	tell AppleScript to log "start is_alias"
	set info_rec to info()
	return alias of info_rec
end is_alias

(*!@abstruct
<!-- begin locale ja -->
シンボリックリンクであるかどうか調べます。
<!-- begin locale en -->
Check whether the item is a symbolic link or not.
<!-- end locale -->
@result boolean : 
<!-- begin locale ja -->シンボリックリングであれば true
<!-- begin locale en -->true if the item is a symbolic link<!-- end locale -->
*)
on is_symlink()
	if my _is_simlink is missing value then
		try
			do shell script "test -L " & quoted_path()
			set my _is_symlink to true
		on error
			set my _is_symlink to false
		end try
	end if
	return my _is_simlink
end is_symlink

(*!@abstruct
<!-- begin locale ja -->
可視ファイル/ファイルであるかどうか
<!-- begin locale en -->
Check whether the item is visible or not.
<!-- end locale -->
@result boolean : 
<!-- begin locale ja -->可視ファイル/フォルダであれば true
<!-- begin locale en -->true if the item is visible.<!-- end locale -->
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
<!-- begin locale ja -->
クリエータコードとタイプコードを設定します。
<!-- begin locale en -->
set creator code and type code to the item.
<!-- end locale -->
@param creator_code (Unicode text or string) : 
<!-- begin locale ja -->クリエータコード
<!-- begin locale en -->creator code which consists of 4 characters
<!-- end locale -->
@param type_code (Unicode text or string) : 
<!-- begin locale ja -->タイプコード
<!-- begin locale en -->type code which consists of 4 characters
<!-- end locale -->
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
<!-- begin locale ja -->
ファイルの情報をまとめて取得します。
<!-- begin locale en -->
Obtain file information.
<!-- end locale -->
@description
<!-- begin locale ja -->
info for コマンドを使用して情報を取得します。一度 info() を実行するとその結果は内部にキャッシュされます。
<!-- begin locale en -->
Do "info for" command for the item. The result is cached and same value is returned at next calling info().
<!-- end locale -->
@result record : 
<!-- begin locale ja -->info for コマンドの実行結果
<!-- begin locale en -->result of info for command<!-- end locale -->
*)
on info()
	if my _infoRecord is missing value then
		check_existance_raising_error()
		set my _infoRecord to info for as_furl()
	end if
	return my _infoRecord
end info

(*!@abstruct
<!-- begin locale ja -->
ファイルの情報をディスクシステムから再取得します。
<!-- begin locale en -->
Obtain file information
<!-- end locale -->
@description
<!-- begin locale ja -->
info for コマンドを使用して情報を取得します。((<info>))() を実行するとその結果は内部にキャッシュされますが、re_info()は info for コマンドを実行して、キャッシュを更新します。
<!-- begin locale en -->
Do "info for" command for the item and reset the cache of ((<info>))().
<!-- end locale -->
@result record :
<!-- begin locale ja -->info for コマンドの実行結果
<!-- begin locale en -->result of info for command<!-- end locale -->
*)
on re_info()
	set my _infoRecord to info for as_furl()
	return my _infoRecord
end re_info

(*!@group Obtain Path Infomation *)

(*!@abstruct 
<!-- begin locale ja -->
ファイル/フォルダ名を取得します。
<!-- begin locale en -->
Obtain the name of the item referenced by the instance 
<!-- end locale -->
@result Unicode text
*)
on item_name()
	return my _pathInfo's item_name()
end item_name

(*!@abstruct 
<!-- begin locale ja -->
ベースネーム(ファイル名から拡張子をのぞいたもの)を取得します。
<!-- begin locale en -->
Obtain the base name (a name which does not include path extension) of the item referenced by the instance.
<!-- end locale -->
@result Unicode text
*)
on basename()
	return my _pathInfo's basename()
end basename

(*!@abstruct 
<!-- begin locale ja -->
ファイル名の拡張子を取得します。
<!-- begin locale en -->
Obtain path extension　of the item referenced by the instance.
<!-- end locale -->
@result Unicode text
*)
on path_extension()
	return my _pathInfo's path_extension()
end path_extension


on update_cache()
	if my _infoRecord is not missing value then
		check_existance_raising_error()
		set my _infoRecord to info for item_ref()
	end if
end update_cache

(*!@group Working with a Bundle *)

(*!@abstruct
<!-- begin locale ja -->
バンドルリソースに含まれているファイルを取得します。
<!-- begin locale en -->
Obtain an item which is in the bundle resource folder.
<!-- end locale -->
@description
<!-- begin locale ja -->
バンドルを参照しているインスタンスにしか実行できません。
<!-- begin locale en -->
This method can be call to a bundle.
<!-- end locale -->
@param resource_name (Unicode text) : 
<!-- begin locale ja -->リソース名
<!-- begin locale en -->a resource name
<!-- end locale -->
@result script object : a XFile instance
*)
on bundle_resource(resource_name)
	return make_with(path to resource resource_name in bundle (as_alias()))
end bundle_resource

(*!@abstruct
<!-- begin locale ja -->
バンドルのInfo.plistファイルの参照を取得します。
<!-- begin locale en -->
Obtain a reference to Info.plist of the bundle.
<!-- end locale -->
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
<!-- begin locale ja -->
参照しているファイル/フォルダが存在するかどうか調べます。
<!-- begin locale en -->
Check whether the item referenced by the instance exists or not.
<!-- end locale -->
@description
<!-- begin locale ja -->
内部のファイル参照をエイリアスに変換します。すでにエイリアス形式の参照を保持している場合でも、エイリアスを再構築します。

通常、エイリアスはファイルの移動、ファイル名の変更を追跡することができますが、別のファイルで上書きされると追跡できなくなります。
そのようなとき、item_exists() を実行してエイリアスを再構築してください。
<!-- begin locale en -->
A file reference stored in a instance is converted to alias class.
Even if the class of the inner file reference already has been alias, the alias is reconstructed.
<!-- end locale -->
@result boolean :
<!-- begin locale ja -->存在するのであれば true
<!-- begin locale en -->true if the item exists.<!-- end locale -->
*)
on item_exists()
	return my _pathInfo's item_exists()
end item_exists

(*!@abstruct
<!-- begin locale ja -->
参照しているファイル/フォルダが存在するかどうか調べます。
<!-- begin locale en -->
Check whether the item referenced by the instance exists or not.
<!-- end locale -->
@description
<!-- begin locale ja -->
((<item_exists>)) とは違って、内部のファイル参照は更新されません。
<!-- begin locale en -->
The internal file reference will not be changed unlike ((<item_exists>)).
<!-- end locale -->
@result boolean :
<!-- begin locale ja -->存在するのであれば true
<!-- begin locale en -->true if the item exists.<!-- end locale -->
*)
on item_exists_without_update()
	return my _pathInfo's item_exists_without_update()
end item_exists_without_update

(*!@abstruct
<!-- begin locale ja -->
((<item_exists>)) と同じです。参照しているファイル/フォルダが存在するかどうか調べます。
<!-- begin locale en -->
Synonym of ((<item_exists>)). Check whether the item referenced by the instance exists or not.
<!-- end locale -->
@result boolean : 
<!-- begin locale ja -->存在するのであれば true
<!-- begin locale en -->true if the item exists.<!-- end locale -->
*)
on exists
	return item_exists()
end exists

(*!@abstruct
<!-- begin locale ja -->
ファイル/フォルダ名を変更します。
<!-- begin locale en -->
Rename an item which referenced by the XFile instance.
<!-- end locale -->
@result boolean : 
<!-- begin locale ja -->成功すれば true
<!-- begin locale en -->boolean : true if success.<!-- end locale -->
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
<!-- begin locale ja -->
ファイル/フォルダを指定した場所にコピーします。
<!-- begin locale en -->
Copy the item to specified location
<!-- end locale -->
@description
<!-- begin locale ja -->
同名のファイルがあれば上書きします。
<!-- begin locale en -->
Same name item in the destination is replaced.
<!-- end locale -->
@param a_destination (script object or text) : 
<!-- begin locale ja -->コピー先を参照している XFile のインスタンス。もしくは、ターゲットからの相対パス。
<!-- begin locale en -->a XFile instance referencing the copy destination or a relative path.
<!-- end locale -->
@result script object : 
<!-- begin locale ja -->コピーしたファイル/フォルダの XFile インスタンス
<!-- begin locale en -->a XFile instance referencing copied item.<!-- end locale -->
*)
on copy_to(a_destination)
	return copy_with_opts(a_destination, missing value)
end copy_to

(*!
@abstruct 
<!-- begin locale ja -->
ファイル/フォルダを指定した場所にコピーします。いくつかのオプションを指定できます。
<!-- begin locale en -->
Copy the item to specified location with options.
<!-- end locale -->
@description
<!-- begin locale ja -->
第２引数でオプション（ record クラスの値）を与えることにより、コピー操作のカスタマイズが行えます。
オプションとしてあたえるレコードは、{with_replaceing : boolean, with_admin:boolean, with_replacing: boolean} というフォーマットです。値を指定しないラベルは省略可能です。
* with_replacing : コピー先にファイルがあった場合置き換えるかどうか。デフォルトは true。
* with_admin : 管理者権限でコピーします。デフォルトは false。
* with_removing : コピー先が存在する場合、コピー先を削除してからコピーを実行します。デフォルトは false。
<!-- begin locale en -->
By passing options (a value of a record) as a second parameter, you can change the behavior of copying. The format of the option record is {with_replaceing : boolean, with_admin:boolean, with_replacing: boolean}. You can ommit labels you don't required.
* with_replacing : Copying with replacing the destination. The default is true.
* with_admin : Copying with administrator privileges. The default is false.
* with_removing : Copying after removing the destination. The default is false.
<!-- end locale -->
@param a_destination (script object) : 
<!-- begin locale ja -->コピー先を参照している XFile のインスタンスもしくは相対パス。
<!-- begin locale en -->a XFile instance referencing the copy destination or a relative path.
<!-- end locale -->
@param opts ( record): 
<!-- begin locale ja -->コピー先に
<!-- begin locale en -->a XFile instance referencing the copy destination
<!-- end locale -->
@result script object : 
<!-- begin locale ja -->コピーしたファイル/フォルダの XFile インスタンス
<!-- begin locale en -->a XFile instance referencing copied item.<!-- end locale -->
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
<!-- begin locale ja -->
ファイル/フォルダを指定した場所に移動します。
<!-- begin locale en -->
Move the item referenced by the instance to specified location.
<!-- end locale -->
@param a_destination (script object) : 
<!-- begin locale ja -->移動先を参照している XFile インスタンス
<!-- begin locale en -->a XFile instance referencing the destination to move.
<!-- end locale -->
@result boolean : 
<!-- begin locale ja -->成功すれば true
<!-- begin locale en -->boolean : true if success.<!-- end locale -->
*)
on move_to(a_destination)
	if not item_exists() then
		return false
	end if
	(*
	set is_folder_to to false
	if a_destination's item_exists_without_update() then
		set is_folder_to to a_destination's is_folder()
	end if
	*)
	
	set destination_path to quoted form of a_destination's posix_path()
	set source_path to quoted form of posix_path()
	do shell script "mv -f " & source_path & space & destination_path
	
	return true
end move_to

(*!@abstruct
<!-- begin locale ja -->
エイリアスファイルのオリジナルを求めます。
<!-- begin locale en -->
Resolving original item of a alias file.
<!-- end locale -->
@description
<!-- begin locale ja -->
エイリアスファイルでなければ自分自身を返します。
オリジナルが見つからなければ missing value を返します。
<!-- begin locale en -->
If the item referenced by the XFile instance is not an alias file, same instance is returned.
 If the original item is not found, missing value is returned.
<!-- end locale -->
@result script object or missing value
*)
on resolve_alias()
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
	else if is_symlink() then
		set original_item to deep_copy()
		try
			original_item's item_exists()
		on error number 1350
			return missing value
		end try
		return original_item
	else
		return a reference to me
	end if
end resolve_alias

(*!@abstruct
<!-- begin locale ja -->
ゴミ箱に入れます
<!-- begin locale en -->
Put into trash.
<!-- end locale -->
*)
on into_trash()
	set a_file to as_alias()
	tell application "Finder"
		delete a_file
	end tell
	update_pathinfo()
end into_trash

(*!@abstruct
<!-- begin locale ja -->
削除します
<!-- begin locale en -->
Remove the item
<!-- end locale -->
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
<!-- begin locale ja -->
サブフォルダを作ります。
<!-- begin locale en -->
Make a sub folder
<!-- end locale -->
@description
<!-- begin locale ja -->
すでに同名のファイルがあるなどの理由で、失敗したら missing value
<!-- begin locale en -->
missing value is returned, if failing to make a new folder
<!-- end locale -->
@param folder_name (Unicode text) : 
<!-- begin locale ja -->フォルダ名
<!-- begin locale en -->a name of new folder.
<!-- end locale -->
@result script object or missing value : 
<!-- begin locale ja -->新しく作ったフォルダの XFile インスタンス。
<!-- begin locale en -->a XFile instance of newly created folder.<!-- end locale -->
*)
on make_folder(folder_name)
	if not (item_exists()) then
		log (my _pathInfo's as_text() & " does not exists.")
		return missing value
	end if
	
	set new_folder to child(folder_name)
	return new_folder's make_path({})
end make_folder

(*!@abstruct
<!-- begin locale ja -->
設定されているファイルパスのフォルダを作ります。 
<!-- begin locale en -->
Make folders which indicating the path of the XFile instance.
<!-- end locale -->
@description
<!-- begin locale ja -->
mkdir -p を使ってつくります。失敗したら missing valueが返ります。
引数にオプションとしてレコードをあたえ動作をカスタマイズできます。

{with_admin : boolean}

今のところ、with_admin だけです。true を、与えると管理者権限でフォルダを作ります。
オプションを指定しない場合は、空のリスト {} を与えてください。
<!-- begin locale en -->
Using a shell command "mkdir -p".
By passing a record of the following format, you can make folders with administrator privileges.

{with_admin : boolean}

If you don't need to specify options, pass an empty list {}.
<!-- end locale -->
@result script object or missing value : 
<!-- begin locale ja --> 新しく作ったフォルダの XFile インスタンス。
<!-- begin locale en -->a XFile instance of newly created folder. <!-- end locale -->
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
<!-- begin locale ja -->
ファイルの内容を UTF-8 テキストとして読み込みます。
<!-- begin locale en -->
Read file contents as UTF-8 encoded text.
<!-- end locale -->
@result Unicode text (UTF-8)
*)
on read_as_utf8()
	check_existance_raising_error()
	return read (as_alias()) as «class utf8»
end read_as_utf8

(*!@abstruct
<!-- begin locale ja -->
ファイルに UTF-8 テキストを書き込みます。
<!-- begin locale en -->
Write data into the file as UTF-8 encoded text.
<!-- end locale -->
@param a_data (Unicode text or string) :
<!-- begin locale ja -->ファイルに書き込むデータ
<!-- begin locale en -->data to write into the file.
<!-- end locale -->
*)
on write_as_utf8(a_data)
	set output to open for access as_furl() with write permission
	set eof output to 0
	write a_data to output as «class utf8»
	close access output
end write_as_utf8

(*!@group Parent and Children *)

(*!@abstruct
<!-- begin locale ja -->
XFile のインスタンスが参照しているファイル/フォルダを含むフォルダを取得します。
<!-- begin locale en -->
Obtain a folder containing the item referenced by the XFile instance.
<!-- end locale -->
@result script object : 
<!-- begin locale ja -->親フォルダの XFile インスタンス
<!-- begin locale en -->A XFile instance of the parent folder.<!-- end locale -->
*)
on parent_folder()
	return make_with_pathinfo(my _pathInfo's parent_folder())
end parent_folder

(*!@abstruct
<!-- begin locale ja -->
フォルダ内のファイル/フォルダを相対パスを指定して取得します。
<!-- begin locale en -->
Obtain an item in the folder with specifying a sub path from the target.
<!-- end locale -->
@description
<!-- begin locale ja -->
存在しないフォルダに対して実行すると missing value が返ります。
<!-- begin locale en -->
If this methods is sent to non exsisting folder, missing value is returend.
<!-- end locale -->
@param suppath(Unicode text) :
<!-- begin locale ja -->取得する項目のサブパス
<!-- begin locale en -->sub path to obtain.
<!-- end locale -->
@result script object or missing value : 
<!-- begin locale ja --> XFile インスタンス
<!-- begin locale en -->a XFile instance <!-- end locale -->
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
<!-- begin locale ja -->
フォルダ内で他と名前が重複しない XFile インスタンスを生成します。
<!-- begin locale en -->
Obtain a XFile instance reference unique name item in the folder.
<!-- end locale -->
@description
<!-- begin locale ja -->
フォルダでない XFile のインスタンスに対して実行すると、missing value が返ります。
XFile のインスタンスがファイル参照が存在しなければ、error number 1350 が発生します。
<!-- begin locale en -->
If the instance's file reference is not a folder, missing value will be returned.
If this methods is sent to non existing item, error number 1350 will be raised.
<!-- end locale -->
@param a_candidate(Unicode text or list) :
<!-- begin locale ja -->
取得したいファイル参照の名前の候補。既に存在する名前であれば変更が加えられます。
<!-- begin locale en -->
A candidate of a name to obtain unique item. If same name item exists, the candidate is modified.
<!-- end locale -->
@result script object :
<!-- begin locale ja -->XFile インスタンス
<!-- begin locale en -->a XFile instance<!-- end locale -->
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
<!--begin locale ja-->
フォルダ内のファイル/フォルダを引数にしてスクリプトオブジェクトの do ハンドラを繰り返し実行します。
<!--begin locale en-->
Call do handler of given script object with each item in the folder as an argument.
<!--end locale-->
@description 
<!--begin locale ja-->
フォルダの参照を保持している XFile に対して実行できます。

a_script は引数を一つだけとる do ハンドラを実装していなければなりません。
do ハンドラには、フォルダ内の項目の XFile インスタンスが渡されます。
do ハンドラの返り値は true もしくは false である必要があります。do ハンドラが false を 返すと処理を中止します。

<!--begin locale en-->
each handler can peform for a XFile instance referencing a folder.

a_script must have a &quot;do&quot; handler which require only argument. 
Each XFile instance in the target folder is passed to the &quot;do&quot; handler.
The do handler must return true or false. When the do handler return false, the process is stoped immediately.
<!--end locale-->
@param
<!--begin locale ja-->
a_script(スクリプトオブジェクト) : 引数を一つだけとる do ハンドラを持っている必要があります。 do ハンドラは真偽値を返さなくてはなりません。
<!--begin locale en-->
a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
<!--end locale-->
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
<!-- begin locale ja -->
ターゲットを引数にとって、シェルコマンドを実行します。
<!-- begin locale en -->
Run passed shell command taking the target as an argument.
<!-- end locale -->
@param a_command(text) : shell command
@result text : 
<!-- begin locale ja -->シェルコマンドの標準出力
<!-- begin locale en -->standard output of the shell command<!-- end locale -->
*)
on perform_shell(a_command)
	return do shell script a_command & space & quoted_path()
end perform_shell

(*!@abstruct
<!-- begin locale ja -->
ターゲットを引数にとって、test コマンドを実行します。
<!-- begin locale en -->
run test command taking the target as an argument.
<!-- end locale -->
@param option(text) : 
<!-- begin locale ja -->
test コマンドに与えるオプション。詳しくは test コマンドの man ページを見てください。
<!-- begin locale en -->
An option to passed to the test command. See the man page of the test command.
<!-- end locale -->
@result boolean : 
<!-- begin locale ja -->test コマンドが成功したら true。
<!-- begin locale en -->true if test command successfully exits.<!-- end locale -->
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

