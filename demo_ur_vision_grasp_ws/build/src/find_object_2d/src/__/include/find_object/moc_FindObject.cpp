/****************************************************************************
** Meta object code from reading C++ file 'FindObject.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../../src/src/find_object_2d/include/find_object/FindObject.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'FindObject.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_find_object__FindObject_t {
    QByteArrayData data[15];
    char stringdata0[186];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_find_object__FindObject_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_find_object__FindObject_t qt_meta_stringdata_find_object__FindObject = {
    {
QT_MOC_LITERAL(0, 0, 23), // "find_object::FindObject"
QT_MOC_LITERAL(1, 24, 12), // "objectsFound"
QT_MOC_LITERAL(2, 37, 0), // ""
QT_MOC_LITERAL(3, 38, 26), // "find_object::DetectionInfo"
QT_MOC_LITERAL(4, 65, 19), // "find_object::Header"
QT_MOC_LITERAL(5, 85, 7), // "cv::Mat"
QT_MOC_LITERAL(6, 93, 18), // "addObjectAndUpdate"
QT_MOC_LITERAL(7, 112, 5), // "image"
QT_MOC_LITERAL(8, 118, 2), // "id"
QT_MOC_LITERAL(9, 121, 8), // "filePath"
QT_MOC_LITERAL(10, 130, 21), // "removeObjectAndUpdate"
QT_MOC_LITERAL(11, 152, 6), // "detect"
QT_MOC_LITERAL(12, 159, 6), // "header"
QT_MOC_LITERAL(13, 166, 5), // "depth"
QT_MOC_LITERAL(14, 172, 13) // "depthConstant"

    },
    "find_object::FindObject\0objectsFound\0"
    "\0find_object::DetectionInfo\0"
    "find_object::Header\0cv::Mat\0"
    "addObjectAndUpdate\0image\0id\0filePath\0"
    "removeObjectAndUpdate\0detect\0header\0"
    "depth\0depthConstant"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_find_object__FindObject[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    4,   49,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       6,    3,   58,    2, 0x0a /* Public */,
       6,    2,   65,    2, 0x2a /* Public | MethodCloned */,
       6,    1,   70,    2, 0x2a /* Public | MethodCloned */,
      10,    1,   73,    2, 0x0a /* Public */,
      11,    1,   76,    2, 0x0a /* Public */,
      11,    4,   79,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3, 0x80000000 | 4, 0x80000000 | 5, QMetaType::Float,    2,    2,    2,    2,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 5, QMetaType::Int, QMetaType::QString,    7,    8,    9,
    QMetaType::Void, 0x80000000 | 5, QMetaType::Int,    7,    8,
    QMetaType::Void, 0x80000000 | 5,    7,
    QMetaType::Void, QMetaType::Int,    8,
    QMetaType::Void, 0x80000000 | 5,    7,
    QMetaType::Void, 0x80000000 | 5, 0x80000000 | 4, 0x80000000 | 5, QMetaType::Float,    7,   12,   13,   14,

       0        // eod
};

void find_object::FindObject::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<FindObject *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->objectsFound((*reinterpret_cast< const find_object::DetectionInfo(*)>(_a[1])),(*reinterpret_cast< const find_object::Header(*)>(_a[2])),(*reinterpret_cast< const cv::Mat(*)>(_a[3])),(*reinterpret_cast< float(*)>(_a[4]))); break;
        case 1: _t->addObjectAndUpdate((*reinterpret_cast< const cv::Mat(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3]))); break;
        case 2: _t->addObjectAndUpdate((*reinterpret_cast< const cv::Mat(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 3: _t->addObjectAndUpdate((*reinterpret_cast< const cv::Mat(*)>(_a[1]))); break;
        case 4: _t->removeObjectAndUpdate((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 5: _t->detect((*reinterpret_cast< const cv::Mat(*)>(_a[1]))); break;
        case 6: _t->detect((*reinterpret_cast< const cv::Mat(*)>(_a[1])),(*reinterpret_cast< const find_object::Header(*)>(_a[2])),(*reinterpret_cast< const cv::Mat(*)>(_a[3])),(*reinterpret_cast< float(*)>(_a[4]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (FindObject::*)(const find_object::DetectionInfo & , const find_object::Header & , const cv::Mat & , float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&FindObject::objectsFound)) {
                *result = 0;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject find_object::FindObject::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_find_object__FindObject.data,
    qt_meta_data_find_object__FindObject,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *find_object::FindObject::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *find_object::FindObject::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_find_object__FindObject.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int find_object::FindObject::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
    return _id;
}

// SIGNAL 0
void find_object::FindObject::objectsFound(const find_object::DetectionInfo & _t1, const find_object::Header & _t2, const cv::Mat & _t3, float _t4)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
