/****************************************************************************
** Meta object code from reading C++ file 'Camera.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../../src/src/find_object_2d/include/find_object/Camera.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'Camera.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_find_object__Camera_t {
    QByteArrayData data[12];
    char stringdata0[131];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_find_object__Camera_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_find_object__Camera_t qt_meta_stringdata_find_object__Camera = {
    {
QT_MOC_LITERAL(0, 0, 19), // "find_object::Camera"
QT_MOC_LITERAL(1, 20, 13), // "imageReceived"
QT_MOC_LITERAL(2, 34, 0), // ""
QT_MOC_LITERAL(3, 35, 7), // "cv::Mat"
QT_MOC_LITERAL(4, 43, 5), // "image"
QT_MOC_LITERAL(5, 49, 19), // "find_object::Header"
QT_MOC_LITERAL(6, 69, 6), // "header"
QT_MOC_LITERAL(7, 76, 5), // "depth"
QT_MOC_LITERAL(8, 82, 13), // "depthConstant"
QT_MOC_LITERAL(9, 96, 8), // "finished"
QT_MOC_LITERAL(10, 105, 15), // "updateImageRate"
QT_MOC_LITERAL(11, 121, 9) // "takeImage"

    },
    "find_object::Camera\0imageReceived\0\0"
    "cv::Mat\0image\0find_object::Header\0"
    "header\0depth\0depthConstant\0finished\0"
    "updateImageRate\0takeImage"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_find_object__Camera[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x06 /* Public */,
       1,    4,   42,    2, 0x06 /* Public */,
       9,    0,   51,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      10,    0,   52,    2, 0x0a /* Public */,
      11,    0,   53,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 3, 0x80000000 | 5, 0x80000000 | 3, QMetaType::Float,    4,    6,    7,    8,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void find_object::Camera::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Camera *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->imageReceived((*reinterpret_cast< const cv::Mat(*)>(_a[1]))); break;
        case 1: _t->imageReceived((*reinterpret_cast< const cv::Mat(*)>(_a[1])),(*reinterpret_cast< const find_object::Header(*)>(_a[2])),(*reinterpret_cast< const cv::Mat(*)>(_a[3])),(*reinterpret_cast< float(*)>(_a[4]))); break;
        case 2: _t->finished(); break;
        case 3: _t->updateImageRate(); break;
        case 4: _t->takeImage(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Camera::*)(const cv::Mat & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Camera::imageReceived)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Camera::*)(const cv::Mat & , const find_object::Header & , const cv::Mat & , float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Camera::imageReceived)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Camera::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Camera::finished)) {
                *result = 2;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject find_object::Camera::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_find_object__Camera.data,
    qt_meta_data_find_object__Camera,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *find_object::Camera::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *find_object::Camera::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_find_object__Camera.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int find_object::Camera::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void find_object::Camera::imageReceived(const cv::Mat & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void find_object::Camera::imageReceived(const cv::Mat & _t1, const find_object::Header & _t2, const cv::Mat & _t3, float _t4)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void find_object::Camera::finished()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
