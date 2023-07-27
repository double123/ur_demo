/****************************************************************************
** Meta object code from reading C++ file 'AddObjectDialog.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/src/find_object_2d/src/AddObjectDialog.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'AddObjectDialog.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_find_object__AddObjectDialog_t {
    QByteArrayData data[12];
    char stringdata0[140];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_find_object__AddObjectDialog_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_find_object__AddObjectDialog_t qt_meta_stringdata_find_object__AddObjectDialog = {
    {
QT_MOC_LITERAL(0, 0, 28), // "find_object::AddObjectDialog"
QT_MOC_LITERAL(1, 29, 6), // "update"
QT_MOC_LITERAL(2, 36, 0), // ""
QT_MOC_LITERAL(3, 37, 7), // "cv::Mat"
QT_MOC_LITERAL(4, 45, 19), // "find_object::Header"
QT_MOC_LITERAL(5, 65, 4), // "next"
QT_MOC_LITERAL(6, 70, 4), // "back"
QT_MOC_LITERAL(7, 75, 6), // "cancel"
QT_MOC_LITERAL(8, 82, 11), // "takePicture"
QT_MOC_LITERAL(9, 94, 16), // "updateNextButton"
QT_MOC_LITERAL(10, 111, 8), // "cv::Rect"
QT_MOC_LITERAL(11, 120, 19) // "changeSelectionMode"

    },
    "find_object::AddObjectDialog\0update\0"
    "\0cv::Mat\0find_object::Header\0next\0"
    "back\0cancel\0takePicture\0updateNextButton\0"
    "cv::Rect\0changeSelectionMode"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_find_object__AddObjectDialog[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   59,    2, 0x08 /* Private */,
       1,    4,   62,    2, 0x08 /* Private */,
       5,    0,   71,    2, 0x08 /* Private */,
       6,    0,   72,    2, 0x08 /* Private */,
       7,    0,   73,    2, 0x08 /* Private */,
       8,    0,   74,    2, 0x08 /* Private */,
       9,    0,   75,    2, 0x08 /* Private */,
       9,    1,   76,    2, 0x08 /* Private */,
      11,    0,   79,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void, 0x80000000 | 3, 0x80000000 | 4, 0x80000000 | 3, QMetaType::Float,    2,    2,    2,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 10,    2,
    QMetaType::Void,

       0        // eod
};

void find_object::AddObjectDialog::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<AddObjectDialog *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->update((*reinterpret_cast< const cv::Mat(*)>(_a[1]))); break;
        case 1: _t->update((*reinterpret_cast< const cv::Mat(*)>(_a[1])),(*reinterpret_cast< const find_object::Header(*)>(_a[2])),(*reinterpret_cast< const cv::Mat(*)>(_a[3])),(*reinterpret_cast< float(*)>(_a[4]))); break;
        case 2: _t->next(); break;
        case 3: _t->back(); break;
        case 4: _t->cancel(); break;
        case 5: _t->takePicture(); break;
        case 6: _t->updateNextButton(); break;
        case 7: _t->updateNextButton((*reinterpret_cast< const cv::Rect(*)>(_a[1]))); break;
        case 8: _t->changeSelectionMode(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject find_object::AddObjectDialog::staticMetaObject = { {
    &QDialog::staticMetaObject,
    qt_meta_stringdata_find_object__AddObjectDialog.data,
    qt_meta_data_find_object__AddObjectDialog,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *find_object::AddObjectDialog::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *find_object::AddObjectDialog::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_find_object__AddObjectDialog.stringdata0))
        return static_cast<void*>(this);
    return QDialog::qt_metacast(_clname);
}

int find_object::AddObjectDialog::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
