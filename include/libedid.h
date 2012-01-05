/* Copyright (c) 2011 Samsung Electronics Co, Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.

 *

 * Alternatively, Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.

 */



#ifndef _LIBEDID_H_
#define _LIBEDID_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "video.h"
#include "audio.h"

int EDIDOpen();
int EDIDRead();
void EDIDReset();
/*
int EDIDHDMIModeSupport(const struct HDMIVideoParameter const *video);
int EDIDVideoResolutionSupport(const struct HDMIVideoParameter const *video);
int EDIDColorDepthSupport(const struct HDMIVideoParameter const *video);
int EDIDColorSpaceSupport(const struct HDMIVideoParameter const *video);
int EDIDColorimetrySupport(const struct HDMIVideoParameter const *video);
int EDIDAudioModeSupport(const struct HDMIAudioParameter const *audio);
int EDIDGetCECPhysicalAddress(int* const outAddr);
*/
int EDIDHDMIModeSupport( struct HDMIVideoParameter  *video);
int EDIDVideoResolutionSupport( struct HDMIVideoParameter  *video);
int EDIDColorDepthSupport( struct HDMIVideoParameter  *video);
int EDIDColorSpaceSupport( struct HDMIVideoParameter  *video);
int EDIDColorimetrySupport( struct HDMIVideoParameter  *video);
int EDIDAudioModeSupport( struct HDMIAudioParameter  *audio);
int EDIDGetCECPhysicalAddress(int*  outAddr);

int EDIDClose();

#ifdef __cplusplus
}
#endif
#endif /* _LIBEDID_H_ */
