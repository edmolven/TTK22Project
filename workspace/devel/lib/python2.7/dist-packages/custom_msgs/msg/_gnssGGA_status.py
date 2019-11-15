# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from custom_msgs/gnssGGA_status.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class gnssGGA_status(genpy.Message):
  _md5sum = "0e8745cbb7cfe1a00d99b4fdc87eeb1f"
  _type = "custom_msgs/gnssGGA_status"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64 numSat
float64 hDOP
int64 mode
string modeStatus
"""
  __slots__ = ['numSat','hDOP','mode','modeStatus']
  _slot_types = ['int64','float64','int64','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       numSat,hDOP,mode,modeStatus

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(gnssGGA_status, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.numSat is None:
        self.numSat = 0
      if self.hDOP is None:
        self.hDOP = 0.
      if self.mode is None:
        self.mode = 0
      if self.modeStatus is None:
        self.modeStatus = ''
    else:
      self.numSat = 0
      self.hDOP = 0.
      self.mode = 0
      self.modeStatus = ''

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_qdq().pack(_x.numSat, _x.hDOP, _x.mode))
      _x = self.modeStatus
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.numSat, _x.hDOP, _x.mode,) = _get_struct_qdq().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.modeStatus = str[start:end].decode('utf-8')
      else:
        self.modeStatus = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_qdq().pack(_x.numSat, _x.hDOP, _x.mode))
      _x = self.modeStatus
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.numSat, _x.hDOP, _x.mode,) = _get_struct_qdq().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.modeStatus = str[start:end].decode('utf-8')
      else:
        self.modeStatus = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_qdq = None
def _get_struct_qdq():
    global _struct_qdq
    if _struct_qdq is None:
        _struct_qdq = struct.Struct("<qdq")
    return _struct_qdq
