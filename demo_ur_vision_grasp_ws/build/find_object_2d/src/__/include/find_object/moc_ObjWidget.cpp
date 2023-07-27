/****************************************************************************
** Meta object code from reading C++ file 'ObjWidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/find_object_2d/include/find_object/ObjWidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ObjWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_find_object__ObjWidget_t {
    QByteArrayData data[7];
    char stringdata0[102];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_find_object__ObjWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_find_object__ObjWidget_t qt_meta_stringdata_find_object__ObjWidget = {
    {
QT_MOC_LITERAL(0, 0, 22), // "find_object::ObjWidget"
QT_MOC_LITERAL(1, 23, 16), // "removalTriggered"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 23), // "find_object::ObjWidget*"
QT_MOC_LITERAL(4, 65, 16), // "selectionChanged"
QT_MOC_LITERAL(5, 82, 10), // "roiChanged"
QT_MOC_LITERAL(6, 93, 8) // "cv::Rect"

    },
    "find_object::ObjWidget\0removalTriggered\0"
    "\0find_object::ObjWidget*\0selectionChanged\0"
    "roiChanged\0cv::Rect"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_find_object__ObjWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x06 /* Public */,
       4,    0,   32,    2, 0x06 /* Public */,
       5,    1,   33,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 6,    2,

       0        // eod
};

void find_object::ObjWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<ObjWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->removalTriggered((*reinterpret_cast< find_object::ObjWidget*(*)>(_a[1]))); break;
        case 1: _t->selectionChanged(); break;
        case 2: _t->roiChanged((*reinterpret_cast< const cv::Rect(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 0:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< find_object::ObjWidget* >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (ObjWidget::*)(find_object::ObjWidget * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ObjWidget::removalTriggered)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (ObjWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ObjWidget::selectionChanged)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (ObjWidget::*)(const cv::Rect & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ObjWidget::roiChanged)) {
                *result = 2;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject find_object::ObjWidget::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_find_object__ObjWidget.data,
    qt_meta_data_find_object__ObjWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *find_object::ObjWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *find_object::ObjWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_find_object__ObjWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int find_object::ObjWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
void find_object::ObjWidget::removalTriggered(find_object::ObjWidget * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void find_object::ObjWidget::selectionChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void find_object::ObjWidget::roiChanged(const cv::Rect & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
