variable "bucket_name" {
  description = "The name of the cloud bucket."
  type        = string
}
variable "bucket_location" {
  description = "The region of the cloud bucket."
  type        = string
}
variable "project_id" {
  description = "The ID of the project where the bucket will be created."
  type        = string
}
variable "storage_class" {
  description = "The storage class of the cloud bucket."
  type        = string
  default     = "STANDARD"
}
variable "versioning_enabled" {
  description = "Enable versioning for the cloud bucket."
  type        = bool
  default     = false
}