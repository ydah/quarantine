# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `httpclient` gem.
# Please instead update this file by running `bin/tapioca gem httpclient`.

# typed: true

module HTTP; end

class HTTP::Message
  include ::HTTPClient::Util

  def initialize; end

  def body; end
  def body=(body); end
  def body_encoding; end
  def code; end
  def content; end
  def content_type; end
  def content_type=(content_type); end
  def contenttype; end
  def contenttype=(content_type); end
  def cookies; end
  def dump(dev = T.unsafe(nil)); end
  def header; end
  def headers; end
  def http_body; end
  def http_body=(body); end
  def http_header; end
  def http_header=(_arg0); end
  def http_version; end
  def http_version=(http_version); end
  def ok?; end
  def peer_cert; end
  def peer_cert=(_arg0); end
  def previous; end
  def previous=(_arg0); end
  def reason; end
  def reason=(reason); end
  def redirect?; end
  def see_other?; end
  def status; end
  def status=(status); end
  def status_code; end
  def version; end
  def version=(version); end

  class << self
    def create_query_part_str(query); end
    def escape(str); end
    def escape_query(query); end
    def file?(obj); end
    def get_mime_type_func; end
    def internal_mime_type(path); end
    def keep_alive_enabled?(version); end
    def mime_type(path); end
    def mime_type_handler; end
    def mime_type_handler=(handler); end
    def multiparam_query?(query); end
    def new_connect_request(uri); end
    def new_request(method, uri, query = T.unsafe(nil), body = T.unsafe(nil), boundary = T.unsafe(nil)); end
    def new_response(body, req = T.unsafe(nil)); end
    def parse(query); end
    def set_mime_type_func(handler); end
    def unescape(string); end
  end
end

class HTTP::Message::Body
  def initialize; end

  def chunk_size; end
  def chunk_size=(_arg0); end
  def content; end
  def dump(header = T.unsafe(nil), dev = T.unsafe(nil)); end
  def dump_chunked(header = T.unsafe(nil), dev = T.unsafe(nil)); end
  def init_request(body = T.unsafe(nil), boundary = T.unsafe(nil)); end
  def init_response(body = T.unsafe(nil)); end
  def positions; end
  def positions=(_arg0); end
  def size; end

  private

  def build_query_multipart_str(query, boundary); end
  def dump_chunk(str); end
  def dump_chunk_size(size); end
  def dump_chunks(io, dev); end
  def dump_file(io, dev, sz); end
  def dump_last_chunk; end
  def params_from_file(value); end
  def remember_pos(io); end
  def reset_pos(io); end
  def set_content(body, boundary = T.unsafe(nil)); end
end

HTTP::Message::Body::DEFAULT_CHUNK_SIZE = T.let(T.unsafe(nil), Integer)

class HTTP::Message::Body::Parts
  def initialize; end

  def add(part); end
  def parts; end
  def size; end
  def sizes; end

  private

  def add_size(part, sz); end
end

HTTP::Message::CRLF = T.let(T.unsafe(nil), String)

class HTTP::Message::Headers
  def initialize; end

  def [](key); end
  def []=(key, value); end
  def add(key, value); end
  def all; end
  def body_charset; end
  def body_charset=(_arg0); end
  def body_date; end
  def body_date=(_arg0); end
  def body_encoding; end
  def body_size; end
  def body_size=(body_size); end
  def body_type; end
  def body_type=(_arg0); end
  def chunked; end
  def chunked=(_arg0); end
  def content_type; end
  def content_type=(content_type); end
  def contenttype; end
  def contenttype=(content_type); end
  def create_query_part; end
  def create_query_uri; end
  def delete(key); end
  def dump; end
  def get(key = T.unsafe(nil)); end
  def http_version; end
  def http_version=(_arg0); end
  def init_connect_request(uri); end
  def init_request(method, uri, query = T.unsafe(nil)); end
  def init_response(status_code, req = T.unsafe(nil)); end
  def reason_phrase; end
  def reason_phrase=(_arg0); end
  def request_absolute_uri; end
  def request_absolute_uri=(_arg0); end
  def request_method; end
  def request_query; end
  def request_query=(_arg0); end
  def request_uri; end
  def request_uri=(_arg0); end
  def set(key, value); end
  def set_body_encoding; end
  def set_date_header; end
  def set_headers(headers); end
  def status_code; end
  def status_code=(status_code); end

  private

  def charset_label; end
  def request_line; end
  def response_status_line; end
  def set_header; end
  def set_request_header; end
  def set_response_header; end
end

HTTP::Message::Headers::CHARSET_MAP = T.let(T.unsafe(nil), Hash)
HTTP::Message::Headers::NIL_URI = T.let(T.unsafe(nil), HTTPClient::Util::AddressableURI)
HTTP::Message::Headers::STATUS_CODE_MAP = T.let(T.unsafe(nil), Hash)
HTTP::Message::VERSION_WARNING = T.let(T.unsafe(nil), String)

module HTTP::Status
  class << self
    def redirect?(status); end
    def successful?(status); end
  end
end

HTTP::Status::ACCEPTED = T.let(T.unsafe(nil), Integer)
HTTP::Status::BAD_REQUEST = T.let(T.unsafe(nil), Integer)
HTTP::Status::CREATED = T.let(T.unsafe(nil), Integer)
HTTP::Status::FOUND = T.let(T.unsafe(nil), Integer)
HTTP::Status::INTERNAL = T.let(T.unsafe(nil), Integer)
HTTP::Status::MOVED_PERMANENTLY = T.let(T.unsafe(nil), Integer)
HTTP::Status::MOVED_TEMPORARILY = T.let(T.unsafe(nil), Integer)
HTTP::Status::NON_AUTHORITATIVE_INFORMATION = T.let(T.unsafe(nil), Integer)
HTTP::Status::NO_CONTENT = T.let(T.unsafe(nil), Integer)
HTTP::Status::OK = T.let(T.unsafe(nil), Integer)
HTTP::Status::PARTIAL_CONTENT = T.let(T.unsafe(nil), Integer)
HTTP::Status::PROXY_AUTHENTICATE_REQUIRED = T.let(T.unsafe(nil), Integer)
HTTP::Status::REDIRECT_STATUS = T.let(T.unsafe(nil), Array)
HTTP::Status::RESET_CONTENT = T.let(T.unsafe(nil), Integer)
HTTP::Status::SEE_OTHER = T.let(T.unsafe(nil), Integer)
HTTP::Status::SUCCESSFUL_STATUS = T.let(T.unsafe(nil), Array)
HTTP::Status::TEMPORARY_REDIRECT = T.let(T.unsafe(nil), Integer)
HTTP::Status::UNAUTHORIZED = T.let(T.unsafe(nil), Integer)

class HTTPClient
  include ::HTTPClient::Util

  def initialize(*args, &block); end

  def agent_name; end
  def agent_name=(rhs); end
  def base_url; end
  def base_url=(_arg0); end
  def connect_timeout; end
  def connect_timeout=(rhs); end
  def cookie_manager; end
  def cookie_manager=(_arg0); end
  def cookies; end
  def debug_dev; end
  def debug_dev=(dev); end
  def default_header; end
  def default_header=(_arg0); end
  def default_redirect_uri_callback(uri, res); end
  def delete(uri, *args, &block); end
  def delete_async(uri, *args); end
  def follow_redirect_count; end
  def follow_redirect_count=(_arg0); end
  def force_basic_auth=(force_basic_auth); end
  def from; end
  def from=(rhs); end
  def get(uri, *args, &block); end
  def get_async(uri, *args); end
  def get_content(uri, *args, &block); end
  def head(uri, *args); end
  def head_async(uri, *args); end
  def keep_alive_timeout; end
  def keep_alive_timeout=(rhs); end
  def keep_webmock_compat; end
  def no_proxy; end
  def no_proxy=(no_proxy); end
  def options(uri, *args, &block); end
  def options_async(uri, *args); end
  def patch(uri, *args, &block); end
  def patch_async(uri, *args); end
  def post(uri, *args, &block); end
  def post_async(uri, *args); end
  def post_content(uri, *args, &block); end
  def propfind(uri, *args, &block); end
  def propfind_async(uri, *args); end
  def proppatch(uri, *args, &block); end
  def proppatch_async(uri, *args); end
  def protocol_retry_count; end
  def protocol_retry_count=(rhs); end
  def protocol_version; end
  def protocol_version=(rhs); end
  def proxy; end
  def proxy=(proxy); end
  def proxy_auth; end
  def put(uri, *args, &block); end
  def put_async(uri, *args); end
  def read_block_size; end
  def read_block_size=(rhs); end
  def receive_timeout; end
  def receive_timeout=(rhs); end
  def redirect_uri_callback=(redirect_uri_callback); end
  def request(method, uri, *args, &block); end
  def request_async(method, uri, query = T.unsafe(nil), body = T.unsafe(nil), header = T.unsafe(nil)); end
  def request_async2(method, uri, *args); end
  def request_filter; end
  def reset(uri); end
  def reset_all; end
  def save_cookie_store; end
  def send_timeout; end
  def send_timeout=(rhs); end
  def set_auth(domain, user, passwd); end
  def set_basic_auth(domain, user, passwd); end
  def set_cookie_store(filename); end
  def set_proxy_auth(user, passwd); end
  def socket_local; end
  def socket_local=(rhs); end
  def socket_sync; end
  def socket_sync=(rhs); end
  def ssl_config; end
  def strict_redirect_uri_callback(uri, res); end
  def strict_response_size_check; end
  def strict_response_size_check=(rhs); end
  def tcp_keepalive; end
  def tcp_keepalive=(rhs); end
  def test_loopback_http_response; end
  def test_loopback_response; end
  def trace(uri, *args, &block); end
  def trace_async(uri, *args); end
  def transparent_gzip_decompression; end
  def transparent_gzip_decompression=(rhs); end
  def www_auth; end

  private

  def adapt_block(&block); end
  def create_boundary; end
  def create_request(method, uri, query, body, header); end
  def do_get_block(req, proxy, conn, &block); end
  def do_get_header(req, res, sess); end
  def do_get_stream(req, proxy, conn); end
  def do_request(method, uri, query, body, header, &block); end
  def do_request_async(method, uri, query, body, header); end
  def dump_dummy_request_response(req, res); end
  def file_in_form_data?(body); end
  def follow_redirect(method, uri, query, body, header, &block); end
  def getenv(name); end
  def hashy_argument_has_keys(args, *key); end
  def load_environment; end
  def no_proxy?(uri); end
  def override_header(header, key, value); end
  def protect_keep_alive_disconnected; end
  def set_encoding(str, encoding); end
  def success_content(res); end
  def to_resource_url(uri); end

  class << self
    def delete(*arg, &block); end
    def get(*arg, &block); end
    def get_content(*arg, &block); end
    def head(*arg, &block); end
    def options(*arg, &block); end
    def post(*arg, &block); end
    def post_content(*arg, &block); end
    def propfind(*arg, &block); end
    def proppatch(*arg, &block); end
    def put(*arg, &block); end
    def trace(*arg, &block); end

    private

    def attr_proxy(symbol, assignable = T.unsafe(nil)); end
  end
end

class HTTPClient::AuthBase
  include ::HTTPClient::Util

  def initialize(scheme); end

  def reset_challenge; end
  def scheme; end
end

class HTTPClient::AuthFilterBase
  private

  def parse_authentication_header(res, tag); end
  def parse_challenge_header(challenge); end
end

class HTTPClient::BadResponseError < ::RuntimeError
  def initialize(msg, res = T.unsafe(nil)); end

  def res; end
end

class HTTPClient::BasicAuth < ::HTTPClient::AuthBase
  include ::Mutex_m

  def initialize; end

  def challenge(uri, param_str = T.unsafe(nil)); end
  def force_auth; end
  def force_auth=(_arg0); end
  def get(req); end
  def lock; end
  def locked?; end
  def set(uri, user, passwd); end
  def set?; end
  def synchronize(&block); end
  def try_lock; end
  def unlock; end
end

class HTTPClient::ConfigurationError < ::StandardError; end
class HTTPClient::ConnectTimeoutError < ::HTTPClient::TimeoutError; end

class HTTPClient::Connection
  def initialize(header_queue = T.unsafe(nil), body_queue = T.unsafe(nil)); end

  def async_thread; end
  def async_thread=(_arg0); end
  def finished?; end
  def join; end
  def pop; end
  def push(result); end
end

HTTPClient::CookieManager = WebAgent::CookieManager
HTTPClient::DEFAULT_AGENT_NAME = T.let(T.unsafe(nil), String)

module HTTPClient::DebugSocket
  extend ::HTTPClient::SocketWrap

  def <<(str); end
  def close; end
  def debug_dev=(debug_dev); end
  def gets(rs); end
  def read(size, buf = T.unsafe(nil)); end
  def readpartial(size, buf = T.unsafe(nil)); end

  private

  def debug(str); end
end

class HTTPClient::DigestAuth < ::HTTPClient::AuthBase
  include ::Mutex_m

  def initialize; end

  def challenge(uri, param_str); end
  def get(req); end
  def lock; end
  def locked?; end
  def set(uri, user, passwd); end
  def set?; end
  def synchronize(&block); end
  def try_lock; end
  def unlock; end

  private

  def calc_cred(req, user, passwd, param); end
  def generate_cnonce; end
  def parse_challenge_param(param_str); end
end

class HTTPClient::KeepAliveDisconnected < ::StandardError
  def initialize(sess = T.unsafe(nil), cause = T.unsafe(nil)); end

  def cause; end
  def sess; end
end

HTTPClient::LIB_NAME = T.let(T.unsafe(nil), String)

class HTTPClient::LoopBackSocket
  include ::HTTPClient::SocketWrap

  def initialize(host, port, response); end

  def <<(str); end
  def peer_cert; end
end

HTTPClient::NO_PROXY_HOSTS = T.let(T.unsafe(nil), Array)

class HTTPClient::NegotiateAuth < ::HTTPClient::AuthBase
  include ::Mutex_m

  def initialize(scheme = T.unsafe(nil)); end

  def challenge(uri, param_str); end
  def get(req); end
  def lock; end
  def locked?; end
  def ntlm_opt; end
  def set(uri, user, passwd); end
  def set?; end
  def synchronize(&block); end
  def try_lock; end
  def unlock; end
end

class HTTPClient::OAuth < ::HTTPClient::AuthBase
  include ::Mutex_m

  def initialize; end

  def challenge(uri, param_str = T.unsafe(nil)); end
  def escape(str); end
  def get(req); end
  def get_config(uri = T.unsafe(nil)); end
  def lock; end
  def locked?; end
  def set(*args); end
  def set?; end
  def set_config(uri, config); end
  def synchronize(&block); end
  def try_lock; end
  def unlock; end

  private

  def calc_cred(req, config); end
  def create_base_string(config, header, req); end
  def do_get_config(uri = T.unsafe(nil)); end
  def encode_header(k, v); end
  def encode_param(params); end
  def generate_nonce; end
  def sign(config, header, req); end
  def sign_hmac_sha1(config, base_string); end

  class << self
    def escape(str); end
  end
end

class HTTPClient::OAuth::Config
  include ::HTTPClient::Util

  def initialize(*args); end

  def callback; end
  def callback=(_arg0); end
  def consumer_key; end
  def consumer_key=(_arg0); end
  def consumer_secret; end
  def consumer_secret=(_arg0); end
  def debug_nonce; end
  def debug_nonce=(_arg0); end
  def debug_timestamp; end
  def debug_timestamp=(_arg0); end
  def http_method; end
  def http_method=(_arg0); end
  def realm; end
  def realm=(_arg0); end
  def secret; end
  def secret=(_arg0); end
  def session_handle; end
  def session_handle=(_arg0); end
  def signature_handler; end
  def signature_method; end
  def signature_method=(_arg0); end
  def token; end
  def token=(_arg0); end
  def verifier; end
  def verifier=(_arg0); end
  def version; end
  def version=(_arg0); end
end

HTTPClient::PROPFIND_DEFAULT_EXTHEADER = T.let(T.unsafe(nil), Hash)

class HTTPClient::ProxyAuth < ::HTTPClient::AuthFilterBase
  def initialize; end

  def basic_auth; end
  def digest_auth; end
  def filter_request(req); end
  def filter_response(req, res); end
  def negotiate_auth; end
  def reset_challenge; end
  def set_auth(user, passwd); end
  def sspi_negotiate_auth; end
end

class HTTPClient::ProxyBasicAuth < ::HTTPClient::BasicAuth
  def challenge(uri, param_str = T.unsafe(nil)); end
  def get(req); end
  def set(uri, user, passwd); end
end

class HTTPClient::ProxyDigestAuth < ::HTTPClient::DigestAuth
  def challenge(uri, param_str); end
  def get(req); end
  def reset_challenge; end
  def set(uri, user, passwd); end
end

HTTPClient::RUBY_VERSION_STRING = T.let(T.unsafe(nil), String)
class HTTPClient::ReceiveTimeoutError < ::HTTPClient::TimeoutError; end

class HTTPClient::RetryableResponse < ::StandardError
  def initialize(res = T.unsafe(nil)); end

  def res; end
end

class HTTPClient::SSLConfig
  include ::HTTPClient::Util
  include ::OpenSSL

  def initialize(client); end

  def add_crl(crl); end
  def add_trust_ca(trust_ca_file_or_hashed_dir); end
  def add_trust_ca_to_store(cert_store, trust_ca_file_or_hashed_dir); end
  def cert_store; end
  def cert_store=(cert_store); end
  def cert_store_crl_items; end
  def cert_store_items; end
  def ciphers; end
  def ciphers=(rhs); end
  def clear_cert_store; end
  def client_ca; end
  def client_ca=(rhs); end
  def client_cert; end
  def client_cert=(rhs); end
  def client_key; end
  def client_key=(rhs); end
  def client_key_pass; end
  def client_key_pass=(rhs); end
  def default_verify_callback(is_ok, ctx); end
  def load_trust_ca; end
  def options; end
  def options=(rhs); end
  def post_connection_check(peer_cert, hostname); end
  def sample_verify_callback(is_ok, ctx); end
  def set_client_cert_file(cert_file, key_file, pass = T.unsafe(nil)); end
  def set_context(ctx); end
  def set_crl(crl); end
  def set_default_paths; end
  def set_trust_ca(trust_ca_file_or_hashed_dir); end
  def ssl_version; end
  def ssl_version=(rhs); end
  def timeout; end
  def timeout=(rhs); end
  def verify?; end
  def verify_callback; end
  def verify_callback=(rhs); end
  def verify_depth; end
  def verify_depth=(rhs); end
  def verify_mode; end
  def verify_mode=(rhs); end

  private

  def change_notify; end
  def load_cacerts(cert_store); end

  class << self
    private

    def attr_config(symbol); end
  end
end

HTTPClient::SSLConfig::CIPHERS_DEFAULT = T.let(T.unsafe(nil), String)
HTTPClient::SSLEnabled = T.let(T.unsafe(nil), TrueClass)

class HTTPClient::SSLSocket
  def initialize(socket, dest, config, opts = T.unsafe(nil)); end

  def <<(str); end
  def close; end
  def closed?; end
  def eof?; end
  def flush; end
  def gets(rs); end
  def peer_cert; end
  def read(size, buf = T.unsafe(nil)); end
  def readpartial(size, buf = T.unsafe(nil)); end
  def sync; end
  def sync=(sync); end

  private

  def check_mask(value, mask); end
  def create_openssl_socket(socket); end
  def debug(str); end
  def post_connection_check(hostname); end
  def ssl_connect(hostname = T.unsafe(nil)); end

  class << self
    def create_socket(session); end
  end
end

class HTTPClient::SSPINegotiateAuth < ::HTTPClient::AuthBase
  include ::Mutex_m

  def initialize; end

  def challenge(uri, param_str); end
  def get(req); end
  def lock; end
  def locked?; end
  def set(*args); end
  def set?; end
  def synchronize(&block); end
  def try_lock; end
  def unlock; end
end

class HTTPClient::SendTimeoutError < ::HTTPClient::TimeoutError; end

class HTTPClient::Session
  include ::HTTPClient::Timeout
  include ::HTTPClient::Util

  def initialize(client, dest, agent_name, from); end

  def close; end
  def closed?; end
  def connect_retry; end
  def connect_retry=(_arg0); end
  def connect_ssl_proxy(socket, uri); end
  def connect_timeout; end
  def connect_timeout=(_arg0); end
  def create_loopback_socket(host, port, str); end
  def create_socket(host, port); end
  def debug_dev; end
  def debug_dev=(_arg0); end
  def dest; end
  def eof?; end
  def get_body(&block); end
  def get_header; end
  def last_used; end
  def protocol_retry_count; end
  def protocol_retry_count=(_arg0); end
  def proxy; end
  def proxy=(_arg0); end
  def query(req); end
  def read_block_size; end
  def read_block_size=(_arg0); end
  def receive_timeout; end
  def receive_timeout=(_arg0); end
  def requested_version; end
  def requested_version=(_arg0); end
  def send_timeout; end
  def send_timeout=(_arg0); end
  def socket_local; end
  def socket_local=(_arg0); end
  def socket_sync; end
  def socket_sync=(_arg0); end
  def ssl_config; end
  def ssl_config=(_arg0); end
  def ssl_peer_cert; end
  def strict_response_size_check; end
  def strict_response_size_check=(_arg0); end
  def tcp_keepalive; end
  def tcp_keepalive=(_arg0); end
  def test_loopback_http_response; end
  def test_loopback_http_response=(_arg0); end
  def transparent_gzip_decompression; end
  def transparent_gzip_decompression=(_arg0); end

  private

  def connect; end
  def content_inflater_block(content_encoding, block); end
  def empty_bin_str; end
  def no_message_body?(status); end
  def parse_content_header(key, value); end
  def parse_header(socket); end
  def read_body_chunked(&block); end
  def read_body_length(&block); end
  def read_body_rest; end
  def read_header; end
  def set_header(req); end
end

HTTPClient::Session::BadResponse = HTTPClient::BadResponseError

class HTTPClient::Session::LenientInflater
  def initialize; end

  def inflate(body); end

  private

  def first_inflate(body); end
end

HTTPClient::Session::RS = T.let(T.unsafe(nil), String)
HTTPClient::Session::StatusParseRegexp = T.let(T.unsafe(nil), Regexp)

class HTTPClient::SessionManager
  def initialize(client); end

  def agent_name; end
  def agent_name=(_arg0); end
  def chunk_size; end
  def chunk_size=(_arg0); end
  def connect_retry; end
  def connect_retry=(_arg0); end
  def connect_timeout; end
  def connect_timeout=(_arg0); end
  def debug_dev; end
  def debug_dev=(_arg0); end
  def from; end
  def from=(_arg0); end
  def keep(sess); end
  def keep_alive_timeout; end
  def keep_alive_timeout=(_arg0); end
  def protocol_retry_count; end
  def protocol_retry_count=(_arg0); end
  def protocol_version; end
  def protocol_version=(_arg0); end
  def proxy=(proxy); end
  def query(req, via_proxy); end
  def read_block_size; end
  def read_block_size=(_arg0); end
  def receive_timeout; end
  def receive_timeout=(_arg0); end
  def reset(uri); end
  def reset_all; end
  def send_timeout; end
  def send_timeout=(_arg0); end
  def socket_local; end
  def socket_local=(_arg0); end
  def socket_sync; end
  def socket_sync=(_arg0); end
  def ssl_config; end
  def ssl_config=(_arg0); end
  def strict_response_size_check; end
  def strict_response_size_check=(_arg0); end
  def tcp_keepalive; end
  def tcp_keepalive=(_arg0); end
  def test_loopback_http_response; end
  def transparent_gzip_decompression; end
  def transparent_gzip_decompression=(_arg0); end

  private

  def add_cached_session(sess); end
  def close(dest); end
  def close_all; end
  def get_cached_session(site); end
  def get_session(req, via_proxy = T.unsafe(nil)); end
  def open(uri, via_proxy = T.unsafe(nil)); end
  def scrub_cached_session(now); end
  def valid_session?(sess, now); end
end

class HTTPClient::Site
  def initialize(uri = T.unsafe(nil)); end

  def ==(rhs); end
  def addr; end
  def eql?(rhs); end
  def hash; end
  def host; end
  def host=(_arg0); end
  def hostname; end
  def inspect; end
  def match(uri); end
  def port; end
  def port=(_arg0); end
  def scheme; end
  def scheme=(_arg0); end
  def to_s; end
end

HTTPClient::Site::EMPTY = T.let(T.unsafe(nil), HTTPClient::Site)

module HTTPClient::SocketWrap
  def initialize(socket, *args); end

  def <<(str); end
  def close; end
  def closed?; end
  def eof?; end
  def flush; end
  def gets(rs); end
  def read(size, buf = T.unsafe(nil)); end
  def readpartial(size, buf = T.unsafe(nil)); end
  def sync; end
  def sync=(sync); end
end

module HTTPClient::Timeout; end
class HTTPClient::TimeoutError < ::RuntimeError; end

module HTTPClient::Util
  def argument_to_hash(args, *field); end
  def http?(uri); end
  def https?(uri); end
  def keyword_argument(args, *field); end
  def warning(message); end

  private

  def hash_find_value(hash, &block); end
  def try_require(feature); end
  def uri_dirname(uri); end
  def uri_part_of(uri, part); end
  def urify(uri); end

  class << self
    def hash_find_value(hash, &block); end
    def try_require(feature); end
    def uri_dirname(uri); end
    def uri_part_of(uri, part); end
    def urify(uri); end
  end
end

HTTPClient::Util::AddressableEnabled = T.let(T.unsafe(nil), TrueClass)

class HTTPClient::Util::AddressableURI < ::Addressable::URI
  def authority; end
  def hostname; end
  def port; end
end

HTTPClient::VERSION = T.let(T.unsafe(nil), String)

class HTTPClient::WWWAuth < ::HTTPClient::AuthFilterBase
  def initialize; end

  def basic_auth; end
  def digest_auth; end
  def filter_request(req); end
  def filter_response(req, res); end
  def negotiate_auth; end
  def oauth; end
  def reset_challenge; end
  def set_auth(uri, user, passwd); end
  def sspi_negotiate_auth; end
end

class OpenSSL::X509::Store
  def initialize(*args); end

  def _httpclient_cert_store_items; end
  def add_cert(cert); end
  def add_file(cert); end
  def add_path(cert); end
end

class WebAgent; end

class WebAgent::Cookie
  include ::WebAgent::CookieUtils

  def initialize; end

  def discard=(_arg0); end
  def discard?; end
  def domain; end
  def domain=(_arg0); end
  def domain_orig=(_arg0); end
  def domain_orig?; end
  def expires; end
  def expires=(_arg0); end
  def flag; end
  def http_only=(_arg0); end
  def http_only?; end
  def join_quotedstr(array, sep); end
  def match?(url); end
  def name; end
  def name=(_arg0); end
  def override=(_arg0); end
  def override?; end
  def parse(str, url); end
  def path; end
  def path=(_arg0); end
  def path_orig=(_arg0); end
  def path_orig?; end
  def secure=(_arg0); end
  def secure?; end
  def set_flag(flag); end
  def url; end
  def url=(_arg0); end
  def use=(_arg0); end
  def use?; end
  def value; end
  def value=(_arg0); end

  private

  def normalize_cookie_value(value); end

  class << self
    def parse(str, url); end
  end
end

WebAgent::Cookie::DISCARD = T.let(T.unsafe(nil), Integer)
WebAgent::Cookie::DOMAIN = T.let(T.unsafe(nil), Integer)
WebAgent::Cookie::HTTP_ONLY = T.let(T.unsafe(nil), Integer)
WebAgent::Cookie::OVERRIDE = T.let(T.unsafe(nil), Integer)
WebAgent::Cookie::OVERRIDE_OK = T.let(T.unsafe(nil), Integer)
WebAgent::Cookie::PATH = T.let(T.unsafe(nil), Integer)
WebAgent::Cookie::SECURE = T.let(T.unsafe(nil), Integer)
WebAgent::Cookie::USE = T.let(T.unsafe(nil), Integer)

class WebAgent::CookieManager
  include ::WebAgent::CookieUtils

  def initialize(file = T.unsafe(nil)); end

  def accept_domains; end
  def accept_domains=(_arg0); end
  def add(given); end
  def check_cookie_accept_domain(domain); end
  def check_expired_cookies; end
  def cookie_value(url); end
  def cookies; end
  def cookies=(cookies); end
  def cookies_file; end
  def cookies_file=(_arg0); end
  def find(url); end
  def load_cookies; end
  def parse(str, url); end
  def reject_domains; end
  def reject_domains=(_arg0); end
  def save_all_cookies(force = T.unsafe(nil), save_unused = T.unsafe(nil), save_discarded = T.unsafe(nil)); end
  def save_cookies(force = T.unsafe(nil)); end

  private

  def check_domain(domain, hostname, override); end
  def cookie_error(err, override); end
  def make_cookie_str(cookie_list); end
  def netscape_rule; end
  def netscape_rule=(_arg0); end
end

class WebAgent::CookieManager::Error < ::StandardError; end
class WebAgent::CookieManager::ErrorOverrideOK < ::WebAgent::CookieManager::Error; end
WebAgent::CookieManager::SPECIAL_DOMAIN = T.let(T.unsafe(nil), Array)
class WebAgent::CookieManager::SpecialError < ::WebAgent::CookieManager::Error; end

module WebAgent::CookieUtils
  def domain_match(host, domain); end
  def head_match?(str1, str2); end
  def tail_match?(str1, str2); end
end

class WebAgent::SynchronizedArray < ::Array
  include ::MonitorMixin
end
