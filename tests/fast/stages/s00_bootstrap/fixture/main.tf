/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
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

module "stage" {
  source = "../../../../../fast/stages/00-bootstrap"
  prefix = "edc-fast"
  organization = {
    domain      = "endocodelab.com"
    id          = 546434885099
    customer_id = "C000001"
  }
  billing_account = {
    id              = "013DC7-EC4FAA-E90811"
    organization_id = 546434885099
  }
}
