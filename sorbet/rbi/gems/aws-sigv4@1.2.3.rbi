# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `aws-sigv4` gem.
# Please instead update this file by running `bin/tapioca gem aws-sigv4`.

# typed: true

module Aws
  class << self
    def config; end
    def config=(config); end
    def eager_autoload!(*args); end
    def empty_connection_pools!; end
    def partition(partition_name); end
    def partitions; end
    def shared_config; end
    def use_bundled_cert!; end
  end
end

Aws::CORE_GEM_VERSION = T.let(T.unsafe(nil), String)
module Aws::Sigv4; end

class Aws::Sigv4::Credentials
  def initialize(options = T.unsafe(nil)); end

  def access_key_id; end
  def secret_access_key; end
  def session_token; end
  def set?; end
end

module Aws::Sigv4::Errors; end

class Aws::Sigv4::Errors::MissingCredentialsError < ::ArgumentError
  def initialize(msg = T.unsafe(nil)); end
end

class Aws::Sigv4::Errors::MissingRegionError < ::ArgumentError
  def initialize(*args); end
end

class Aws::Sigv4::Signature
  def initialize(options); end

  def canonical_request; end
  def canonical_request=(_arg0); end
  def content_sha256; end
  def content_sha256=(_arg0); end
  def headers; end
  def headers=(_arg0); end
  def string_to_sign; end
  def string_to_sign=(_arg0); end
end

class Aws::Sigv4::Signer
  def initialize(options = T.unsafe(nil)); end

  def apply_checksum_header; end
  def credentials_provider; end
  def presign_url(options); end
  def region; end
  def service; end
  def sign_event(prior_signature, payload, encoder); end
  def sign_request(request); end
  def unsigned_headers; end

  private

  def canonical_header_value(value); end
  def canonical_headers(headers); end
  def canonical_request(http_method, url, headers, content_sha256); end
  def credential(credentials, date); end
  def credential_scope(date); end
  def credentials_set?(credentials); end
  def downcase_headers(headers); end
  def event_signature(secret_access_key, date, string_to_sign); end
  def event_string_to_sign(datetime, headers, payload, prior_signature, encoder); end
  def extract_credentials_provider(options); end
  def extract_expires_in(options); end
  def extract_http_method(request); end
  def extract_region(options); end
  def extract_service(options); end
  def extract_url(request); end
  def fetch_credentials; end
  def hexhmac(key, value); end
  def hmac(key, value); end
  def host(uri); end
  def normalized_querystring(querystring); end
  def path(url); end
  def sha256_hexdigest(value); end
  def signature(secret_access_key, date, string_to_sign); end
  def signed_headers(headers); end
  def string_to_sign(datetime, canonical_request); end
  def uri_escape(string); end
  def uri_escape_path(string); end

  class << self
    def uri_escape(string); end
    def uri_escape_path(path); end
  end
end

class Aws::Sigv4::StaticCredentialsProvider
  def initialize(options = T.unsafe(nil)); end

  def credentials; end
  def set?; end
end
