from .file import File, N5File, ZarrFile
from .attribute_manager import set_json_encoder, set_json_decoder

__version__ = "1.1.0"
__version_info__ = tuple(int(i) for i in  __version__.split("."))

