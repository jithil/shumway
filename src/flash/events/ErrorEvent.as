/*
 * Copyright 2014 Mozilla Foundation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package flash.events {
public class ErrorEvent extends TextEvent {
  public static const ERROR:String = "error";

  public function ErrorEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false,
                             text:String = "", id:int = 0)
  {
    super(type, bubbles, cancelable, text);
    _id = id;
  }

  private var _id:int;

  public function get errorID():int {
    return _id;
  }

  public override function clone():Event {
    return new ErrorEvent(type, bubbles, cancelable, text, _id);
  }

  public override function toString():String {
    return super.toString();
  }
}
}
