--[[
Code in this file was originally taken from neovim's
source code. (Specifically
https://github.com/neovim/neovim/tree/v0.7.2)  As
such this code follows neovim's license.

Note, the original code taken from neovim's
source did not appear to be from vim's original source
so it should not be subject to vim's license.

Copyright Neovim contributors. All rights reserved.

Neovim is licensed under the terms of the Apache 2.0 license, except for
parts of Neovim that were contributed under the Vim license (see below).

Neovim's license follows:

====
                                 Apache License
                           Version 2.0, January 2004
                        https://www.apache.org/licenses/

   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION

   1. Definitions.

      "License" shall mean the terms and conditions for use, reproduction,
      and distribution as defined by Sections 1 through 9 of this document.

      "Licensor" shall mean the copyright owner or entity authorized by
      the copyright owner that is granting the License.

      "Legal Entity" shall mean the union of the acting entity and all
      other entities that control, are controlled by, or are under common
      control with that entity. For the purposes of this definition,
      "control" means (i) the power, direct or indirect, to cause the
      direction or management of such entity, whether by contract or
      otherwise, or (ii) ownership of fifty percent (50%) or more of the
      outstanding shares, or (iii) beneficial ownership of such entity.

      "You" (or "Your") shall mean an individual or Legal Entity
      exercising permissions granted by this License.

      "Source" form shall mean the preferred form for making modifications,
      including but not limited to software source code, documentation
      source, and configuration files.

      "Object" form shall mean any form resulting from mechanical
      transformation or translation of a Source form, including but
      not limited to compiled object code, generated documentation,
      and conversions to other media types.

      "Work" shall mean the work of authorship, whether in Source or
      Object form, made available under the License, as indicated by a
      copyright notice that is included in or attached to the work
      (an example is provided in the Appendix below).

      "Derivative Works" shall mean any work, whether in Source or Object
      form, that is based on (or derived from) the Work and for which the
      editorial revisions, annotations, elaborations, or other modifications
      represent, as a whole, an original work of authorship. For the purposes
      of this License, Derivative Works shall not include works that remain
      separable from, or merely link (or bind by name) to the interfaces of,
      the Work and Derivative Works thereof.

      "Contribution" shall mean any work of authorship, including
      the original version of the Work and any modifications or additions
      to that Work or Derivative Works thereof, that is intentionally
      submitted to Licensor for inclusion in the Work by the copyright owner
      or by an individual or Legal Entity authorized to submit on behalf of
      the copyright owner. For the purposes of this definition, "submitted"
      means any form of electronic, verbal, or written communication sent
      to the Licensor or its representatives, including but not limited to
      communication on electronic mailing lists, source code control systems,
      and issue tracking systems that are managed by, or on behalf of, the
      Licensor for the purpose of discussing and improving the Work, but
      excluding communication that is conspicuously marked or otherwise
      designated in writing by the copyright owner as "Not a Contribution."

      "Contributor" shall mean Licensor and any individual or Legal Entity
      on behalf of whom a Contribution has been received by Licensor and
      subsequently incorporated within the Work.

   2. Grant of Copyright License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      copyright license to reproduce, prepare Derivative Works of,
      publicly display, publicly perform, sublicense, and distribute the
      Work and such Derivative Works in Source or Object form.

   3. Grant of Patent License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      (except as stated in this section) patent license to make, have made,
      use, offer to sell, sell, import, and otherwise transfer the Work,
      where such license applies only to those patent claims licensable
      by such Contributor that are necessarily infringed by their
      Contribution(s) alone or by combination of their Contribution(s)
      with the Work to which such Contribution(s) was submitted. If You
      institute patent litigation against any entity (including a
      cross-claim or counterclaim in a lawsuit) alleging that the Work
      or a Contribution incorporated within the Work constitutes direct
      or contributory patent infringement, then any patent licenses
      granted to You under this License for that Work shall terminate
      as of the date such litigation is filed.

   4. Redistribution. You may reproduce and distribute copies of the
      Work or Derivative Works thereof in any medium, with or without
      modifications, and in Source or Object form, provided that You
      meet the following conditions:

      (a) You must give any other recipients of the Work or
          Derivative Works a copy of this License; and

      (b) You must cause any modified files to carry prominent notices
          stating that You changed the files; and

      (c) You must retain, in the Source form of any Derivative Works
          that You distribute, all copyright, patent, trademark, and
          attribution notices from the Source form of the Work,
          excluding those notices that do not pertain to any part of
          the Derivative Works; and

      (d) If the Work includes a "NOTICE" text file as part of its
          distribution, then any Derivative Works that You distribute must
          include a readable copy of the attribution notices contained
          within such NOTICE file, excluding those notices that do not
          pertain to any part of the Derivative Works, in at least one
          of the following places: within a NOTICE text file distributed
          as part of the Derivative Works; within the Source form or
          documentation, if provided along with the Derivative Works; or,
          within a display generated by the Derivative Works, if and
          wherever such third-party notices normally appear. The contents
          of the NOTICE file are for informational purposes only and
          do not modify the License. You may add Your own attribution
          notices within Derivative Works that You distribute, alongside
          or as an addendum to the NOTICE text from the Work, provided
          that such additional attribution notices cannot be construed
          as modifying the License.

      You may add Your own copyright statement to Your modifications and
      may provide additional or different license terms and conditions
      for use, reproduction, or distribution of Your modifications, or
      for any such Derivative Works as a whole, provided Your use,
      reproduction, and distribution of the Work otherwise complies with
      the conditions stated in this License.

   5. Submission of Contributions. Unless You explicitly state otherwise,
      any Contribution intentionally submitted for inclusion in the Work
      by You to the Licensor shall be under the terms and conditions of
      this License, without any additional terms or conditions.
      Notwithstanding the above, nothing herein shall supersede or modify
      the terms of any separate license agreement you may have executed
      with Licensor regarding such Contributions.

   6. Trademarks. This License does not grant permission to use the trade
      names, trademarks, service marks, or product names of the Licensor,
      except as required for reasonable and customary use in describing the
      origin of the Work and reproducing the content of the NOTICE file.

   7. Disclaimer of Warranty. Unless required by applicable law or
      agreed to in writing, Licensor provides the Work (and each
      Contributor provides its Contributions) on an "AS IS" BASIS,
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
      implied, including, without limitation, any warranties or conditions
      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
      PARTICULAR PURPOSE. You are solely responsible for determining the
      appropriateness of using or redistributing the Work and assume any
      risks associated with Your exercise of permissions under this License.

   8. Limitation of Liability. In no event and under no legal theory,
      whether in tort (including negligence), contract, or otherwise,
      unless required by applicable law (such as deliberate and grossly
      negligent acts) or agreed to in writing, shall any Contributor be
      liable to You for damages, including any direct, indirect, special,
      incidental, or consequential damages of any character arising as a
      result of this License or out of the use or inability to use the
      Work (including but not limited to damages for loss of goodwill,
      work stoppage, computer failure or malfunction, or any and all
      other commercial damages or losses), even if such Contributor
      has been advised of the possibility of such damages.

   9. Accepting Warranty or Additional Liability. While redistributing
      the Work or Derivative Works thereof, You may choose to offer,
      and charge a fee for, acceptance of support, warranty, indemnity,
      or other liability obligations and/or rights consistent with this
      License. However, in accepting such obligations, You may act only
      on Your own behalf and on Your sole responsibility, not on behalf
      of any other Contributor, and only if You agree to indemnify,
      defend, and hold each Contributor harmless for any liability
      incurred by, or claims asserted against, such Contributor by reason
      of your accepting any such warranty or additional liability.

====

The above license applies to all parts of Neovim except (1) parts that were
contributed under the Vim license and (2) externally maintained libraries.

The externally maintained libraries used by Neovim are:

  - Klib: a Generic Library in C. MIT/X11 license.
  - Lua: MIT license
  - LuaJIT: a Just-In-Time Compiler for Lua. Copyright Mike Pall. MIT license.
  - Luv: Apache 2.0 license
  - libmpack: MIT license
  - libtermkey: MIT license
  - libuv. Copyright Joyent, Inc. and other Node contributors. Node.js license.
  - libvterm: MIT license
  - lua-cjson: MIT license
  - lua-compat: MIT license
  - tree-sitter: MIT license
  - unibilium: LGPL v3
  - xdiff: LGPL v2

====

Any parts of Neovim that were contributed under the Vim license are licensed
under the Vim license unless the copyright holder gave permission to license
those contributions under the Apache 2.0 license.

The Vim license follows:

VIM LICENSE

I)  There are no restrictions on distributing unmodified copies of Vim except
    that they must include this license text.  You can also distribute
    unmodified parts of Vim, likewise unrestricted except that they must
    include this license text.  You are also allowed to include executables
    that you made from the unmodified Vim sources, plus your own usage
    examples and Vim scripts.

II) It is allowed to distribute a modified (or extended) version of Vim,
    including executables and/or source code, when the following four
    conditions are met:
    1) This license text must be included unmodified.
    2) The modified Vim must be distributed in one of the following five ways:
       a) If you make changes to Vim yourself, you must clearly describe in
    the distribution how to contact you.  When the maintainer asks you
    (in any way) for a copy of the modified Vim you distributed, you
    must make your changes, including source code, available to the
    maintainer without fee.  The maintainer reserves the right to
    include your changes in the official version of Vim.  What the
    maintainer will do with your changes and under what license they
    will be distributed is negotiable.  If there has been no negotiation
    then this license, or a later version, also applies to your changes.
    The current maintainer is Bram Moolenaar <Bram@vim.org>.  If this
    changes it will be announced in appropriate places (most likely
    vim.sf.net, www.vim.org and/or comp.editors).  When it is completely
    impossible to contact the maintainer, the obligation to send him
    your changes ceases.  Once the maintainer has confirmed that he has
    received your changes they will not have to be sent again.
       b) If you have received a modified Vim that was distributed as
    mentioned under a) you are allowed to further distribute it
    unmodified, as mentioned at I).  If you make additional changes the
    text under a) applies to those changes.
       c) Provide all the changes, including source code, with every copy of
    the modified Vim you distribute.  This may be done in the form of a
    context diff.  You can choose what license to use for new code you
    add.  The changes and their license must not restrict others from
    making their own changes to the official version of Vim.
       d) When you have a modified Vim which includes changes as mentioned
    under c), you can distribute it without the source code for the
    changes if the following three conditions are met:
    - The license that applies to the changes permits you to distribute
      the changes to the Vim maintainer without fee or restriction, and
      permits the Vim maintainer to include the changes in the official
      version of Vim without fee or restriction.
    - You keep the changes for at least three years after last
      distributing the corresponding modified Vim.  When the maintainer
      or someone who you distributed the modified Vim to asks you (in
      any way) for the changes within this period, you must make them
      available to him.
    - You clearly describe in the distribution how to contact you.  This
      contact information must remain valid for at least three years
      after last distributing the corresponding modified Vim, or as long
      as possible.
       e) When the GNU General Public License (GPL) applies to the changes,
    you can distribute the modified Vim under the GNU GPL version 2 or
    any later version.
    3) A message must be added, at least in the output of the ":version"
       command and in the intro screen, such that the user of the modified Vim
       is able to see that it was modified.  When distributing as mentioned
       under 2)e) adding the message is only required for as far as this does
       not conflict with the license used for the changes.
    4) The contact information as required under 2)a) and 2)d) must not be
       removed or changed, except that the person himself can make
       corrections.

III) If you distribute a modified version of Vim, you are encouraged to use
     the Vim license for your changes and make them available to the
     maintainer, including the source code.  The preferred way to do this is
     by e-mail or by uploading the files to a server and e-mailing the URL.
     If the number of changes is small (e.g., a modified Makefile) e-mailing a
     context diff will do.  The e-mail address to be used is
     <maintainer@vim.org>

IV)  It is not allowed to remove this license from the distribution of the Vim
     sources, parts of it or from a modified version.  You may use this
     license for previous Vim releases instead of the license that they came
     with, at your option.
--]]

function M._str_byteindex_enc(line, index, encoding)
  if not encoding then encoding = 'utf-16' end
  if encoding == 'utf-8' then
    if index then return index else return #line end
  elseif encoding == 'utf-16' then
    return vim.str_byteindex(line, index, true)
  elseif encoding == 'utf-32' then
    return vim.str_byteindex(line, index)
  else
    error("Invalid encoding: " .. vim.inspect(encoding))
  end
end

local function get_lines(bufnr, rows)
  rows = type(rows) == "table" and rows or { rows }

  -- This is needed for bufload and bufloaded
  if bufnr == 0 then
    bufnr = vim.api.nvim_get_current_buf()
  end

  ---@private
  local function buf_lines()
    local lines = {}
    for _, row in pairs(rows) do
      lines[row] = (vim.api.nvim_buf_get_lines(bufnr, row, row + 1, false) or { "" })[1]
    end
    return lines
  end

  local uri = vim.uri_from_bufnr(bufnr)

  -- load the buffer if this is not a file uri
  -- Custom language server protocol extensions can result in servers sending URIs with custom schemes. Plugins are able to load these via `BufReadCmd` autocmds.
  if uri:sub(1, 4) ~= "file" then
    vim.fn.bufload(bufnr)
    return buf_lines()
  end

  -- use loaded buffers if available
  if vim.fn.bufloaded(bufnr) == 1 then
    return buf_lines()
  end

  local filename = api.nvim_buf_get_name(bufnr)

  -- get the data from the file
  local fd = uv.fs_open(filename, "r", 438)
  if not fd then return "" end
  local stat = uv.fs_fstat(fd)
  local data = uv.fs_read(fd, stat.size, 0)
  uv.fs_close(fd)

  local lines = {} -- rows we need to retrieve
  local need = 0 -- keep track of how many unique rows we need
  for _, row in pairs(rows) do
    if not lines[row] then
      need = need + 1
    end
    lines[row] = true
  end

  local found = 0
  local lnum = 0

  for line in string.gmatch(data, "([^\n]*)\n?") do
    if lines[lnum] == true then
      lines[lnum] = line
      found = found + 1
      if found == need then break end
    end
    lnum = lnum + 1
  end

  -- change any lines we didn't find to the empty string
  for i, line in pairs(lines) do
    if line == true then
      lines[i] = ""
    end
  end
  return lines
end

local function get_line(bufnr, row)
  return get_lines(bufnr, { row })[row]
end

local function get_line_byte_from_position(bufnr, position, offset_encoding)
  -- LSP's line and characters are 0-indexed
  -- Vim's line and columns are 1-indexed
  local col = position.character
  -- When on the first character, we can ignore the difference between byte and
  -- character
  if col > 0 then
    local line = get_line(bufnr, position.line) or ''
    local ok, result
    ok, result = pcall(_str_byteindex_enc, line, col, offset_encoding)
    if ok then
      return result
    end
    return math.min(#line, col)
  end
  return col
end

function M.jump_to_location(location, offset_encoding)
  -- location may be Location or LocationLink
  local uri = location.uri or location.targetUri
  if uri == nil then return end
  if offset_encoding == nil then
    vim.notify_once("jump_to_location must be called with valid offset encoding", vim.log.levels.WARN)
  end
  local bufnr = vim.uri_to_bufnr(uri)
  -- Save position in jumplist
  vim.cmd "normal! m'"

  -- Push a new item into tagstack
  local from = {vim.fn.bufnr('%'), vim.fn.line('.'), vim.fn.col('.'), 0}
  local items = {{tagname=vim.fn.expand('<cword>'), from=from}}
  vim.fn.settagstack(vim.fn.win_getid(), {items=items}, 't')

  --- Jump to new location (adjusting for UTF-16 encoding of characters)
  api.nvim_set_current_buf(bufnr)
  api.nvim_buf_set_option(bufnr, 'buflisted', true)
  local range = location.range or location.targetSelectionRange
  local row = range.start.line
  local col = get_line_byte_from_position(bufnr, range.start, offset_encoding)
  api.nvim_win_set_cursor(0, {row + 1, col})
  -- Open folds under the cursor
  vim.cmd("normal! zv")
  return true
end

local function location_handler(_, result, ctx, _)
  if result == nil or vim.tbl_isempty(result) then
    local _ = log.info() and log.info(ctx.method, 'No location found')
    return nil
  end
  local client = vim.lsp.get_client_by_id(ctx.client_id)

  -- textDocument/definition can return Location or Location[]
  -- https://microsoft.github.io/language-server-protocol/specifications/specification-current/#textDocument_definition

  if vim.tbl_islist(result) then
    jump_to_location(result[1], client.offset_encoding)

    if #result > 1 then
      vim.fn.setqflist({}, ' ', {
        title = 'LSP locations',
        items = util.locations_to_items(result, client.offset_encoding)
      })
      vim.api.nvim_command("botright copen")
    end
  else
    jump_to_location(result, client.offset_encoding)
  end
end
