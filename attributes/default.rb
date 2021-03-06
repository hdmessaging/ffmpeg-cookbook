#
# Cookbook Name:: ffmpeg
# Attributes:: default
#
# Author:: Jamie Winsor (<jamie@vialstudios.com>)
#
# Copyright 2011, En Masse Entertainment, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default[:ffmpeg][:install_method] = :source
default[:ffmpeg][:prefix] = "/usr/local"
default[:ffmpeg][:git_repository] = "git://git.videolan.org/ffmpeg.git"
default[:ffmpeg][:compile_flags] = [
  "--disable-debug",
  "--enable-version3",
  "--enable-pthreads",
  "--enable-nonfree",
  "--enable-gpl",
  "--disable-ffplay",
  "--enable-libx264",
  "--enable-libfaac",
  "--enable-libmp3lame",
  "--enable-libtheora",
  "--enable-libvorbis",
  "--enable-libvpx",
  "--enable-libxvid",
  "--enable-shared",
  "--extra-cflags=-fPIC"
]

# JW 07-06-11: Hash of commit or a HEAD should be used - not a tag. Sync action of Git
# provider will always attempt to update the git clone if a tag is used.
default[:ffmpeg][:git_revision]   = "e820e3a2591a0d544925ff1522d2a688a647f1b0" # 0.6.3
