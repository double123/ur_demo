# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from household_objects_database_msgs/TranslateRecognitionIdRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class TranslateRecognitionIdRequest(genpy.Message):
  _md5sum = "4d95610f63ed69a670a8f8aaa3c6aa36"
  _type = "household_objects_database_msgs/TranslateRecognitionIdRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string recognition_id
"""
  __slots__ = ['recognition_id']
  _slot_types = ['string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       recognition_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TranslateRecognitionIdRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.recognition_id is None:
        self.recognition_id = ''
    else:
      self.recognition_id = ''

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
      _x = self.recognition_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.recognition_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.recognition_id = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.recognition_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.recognition_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.recognition_id = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from household_objects_database_msgs/TranslateRecognitionIdResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class TranslateRecognitionIdResponse(genpy.Message):
  _md5sum = "b4afd505fbee150bf06acaffa82e84cf"
  _type = "household_objects_database_msgs/TranslateRecognitionIdResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 household_objects_id

int32 SUCCESS=0
int32 ID_NOT_FOUND
int32 DATABASE_ERROR
int32 OTHER_ERROR
int32 result

"""
  # Pseudo-constants
  SUCCESS = 0

  __slots__ = ['household_objects_id','ID_NOT_FOUND','DATABASE_ERROR','OTHER_ERROR','result']
  _slot_types = ['int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       household_objects_id,ID_NOT_FOUND,DATABASE_ERROR,OTHER_ERROR,result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TranslateRecognitionIdResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.household_objects_id is None:
        self.household_objects_id = 0
      if self.ID_NOT_FOUND is None:
        self.ID_NOT_FOUND = 0
      if self.DATABASE_ERROR is None:
        self.DATABASE_ERROR = 0
      if self.OTHER_ERROR is None:
        self.OTHER_ERROR = 0
      if self.result is None:
        self.result = 0
    else:
      self.household_objects_id = 0
      self.ID_NOT_FOUND = 0
      self.DATABASE_ERROR = 0
      self.OTHER_ERROR = 0
      self.result = 0

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
      buff.write(_get_struct_5i().pack(_x.household_objects_id, _x.ID_NOT_FOUND, _x.DATABASE_ERROR, _x.OTHER_ERROR, _x.result))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 20
      (_x.household_objects_id, _x.ID_NOT_FOUND, _x.DATABASE_ERROR, _x.OTHER_ERROR, _x.result,) = _get_struct_5i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_5i().pack(_x.household_objects_id, _x.ID_NOT_FOUND, _x.DATABASE_ERROR, _x.OTHER_ERROR, _x.result))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 20
      (_x.household_objects_id, _x.ID_NOT_FOUND, _x.DATABASE_ERROR, _x.OTHER_ERROR, _x.result,) = _get_struct_5i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5i = None
def _get_struct_5i():
    global _struct_5i
    if _struct_5i is None:
        _struct_5i = struct.Struct("<5i")
    return _struct_5i
class TranslateRecognitionId(object):
  _type          = 'household_objects_database_msgs/TranslateRecognitionId'
  _md5sum = '4c59c4be3a6f662f70d4287dcaff730f'
  _request_class  = TranslateRecognitionIdRequest
  _response_class = TranslateRecognitionIdResponse