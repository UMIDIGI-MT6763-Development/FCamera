.class public Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;
.super Ljava/lang/Object;
.source "XSAttributeChecker.java"


# static fields
.field public static final ATTIDX_ABSTRACT:I

.field public static final ATTIDX_AFORMDEFAULT:I

.field public static final ATTIDX_BASE:I

.field public static final ATTIDX_BLOCK:I

.field public static final ATTIDX_BLOCKDEFAULT:I

.field private static ATTIDX_COUNT:I = 0x0

.field public static final ATTIDX_DEFAULT:I

.field public static final ATTIDX_EFORMDEFAULT:I

.field public static final ATTIDX_ENUMNSDECLS:I

.field public static final ATTIDX_FINAL:I

.field public static final ATTIDX_FINALDEFAULT:I

.field public static final ATTIDX_FIXED:I

.field public static final ATTIDX_FORM:I

.field public static final ATTIDX_FROMDEFAULT:I

.field public static final ATTIDX_ID:I

.field public static final ATTIDX_ISRETURNED:I

.field public static final ATTIDX_ITEMTYPE:I

.field public static final ATTIDX_MAXOCCURS:I

.field public static final ATTIDX_MEMBERTYPES:I

.field public static final ATTIDX_MINOCCURS:I

.field public static final ATTIDX_MIXED:I

.field public static final ATTIDX_NAME:I

.field public static final ATTIDX_NAMESPACE:I

.field public static final ATTIDX_NAMESPACE_LIST:I

.field public static final ATTIDX_NILLABLE:I

.field public static final ATTIDX_NONSCHEMA:I

.field public static final ATTIDX_PROCESSCONTENTS:I

.field public static final ATTIDX_PUBLIC:I

.field public static final ATTIDX_REF:I

.field public static final ATTIDX_REFER:I

.field public static final ATTIDX_SCHEMALOCATION:I

.field public static final ATTIDX_SOURCE:I

.field public static final ATTIDX_SUBSGROUP:I

.field public static final ATTIDX_SYSTEM:I

.field public static final ATTIDX_TARGETNAMESPACE:I

.field public static final ATTIDX_TYPE:I

.field public static final ATTIDX_USE:I

.field public static final ATTIDX_VALUE:I

.field public static final ATTIDX_VERSION:I

.field public static final ATTIDX_XML_LANG:I

.field public static final ATTIDX_XPATH:I

.field private static final ATTRIBUTE_N:Ljava/lang/String; = "attribute_n"

.field private static final ATTRIBUTE_R:Ljava/lang/String; = "attribute_r"

.field protected static final DT_ANYURI:I = 0x0

.field protected static final DT_BLOCK:I = -0x1

.field protected static final DT_BLOCK1:I = -0x2

.field protected static final DT_BOOLEAN:I = -0xf

.field protected static final DT_COUNT:I = 0x9

.field protected static final DT_FINAL:I = -0x3

.field protected static final DT_FINAL1:I = -0x4

.field protected static final DT_FINAL2:I = -0x5

.field protected static final DT_FORM:I = -0x6

.field protected static final DT_ID:I = 0x1

.field protected static final DT_LANGUAGE:I = 0x8

.field protected static final DT_MAXOCCURS:I = -0x7

.field protected static final DT_MAXOCCURS1:I = -0x8

.field protected static final DT_MEMBERTYPES:I = -0x9

.field protected static final DT_MINOCCURS1:I = -0xa

.field protected static final DT_NAMESPACE:I = -0xb

.field protected static final DT_NCNAME:I = 0x5

.field protected static final DT_NONNEGINT:I = -0x10

.field protected static final DT_POSINT:I = -0x11

.field protected static final DT_PROCESSCONTENTS:I = -0xc

.field protected static final DT_QNAME:I = 0x2

.field protected static final DT_STRING:I = 0x3

.field protected static final DT_TOKEN:I = 0x4

.field protected static final DT_USE:I = -0xd

.field protected static final DT_WHITESPACE:I = -0xe

.field protected static final DT_XPATH:I = 0x6

.field protected static final DT_XPATH1:I = 0x7

.field private static final ELEMENT_N:Ljava/lang/String; = "element_n"

.field private static final ELEMENT_R:Ljava/lang/String; = "element_r"

.field static final INC_POOL_SIZE:I = 0xa

.field static final INIT_POOL_SIZE:I = 0xa

.field private static final INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final fEleAttrsMapG:Ljava/util/Hashtable;

.field private static final fEleAttrsMapL:Ljava/util/Hashtable;

.field private static final fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private static fSeenTemp:[Z

.field private static fTempArray:[Ljava/lang/Object;

.field private static final fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;


# instance fields
.field fArrayPool:[[Ljava/lang/Object;

.field protected fNamespaceList:Ljava/util/Vector;

.field protected fNonSchemaAttrs:Ljava/util/Hashtable;

.field fPoolPos:I

.field protected fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field protected fSeen:[Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ID:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SOURCE:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VERSION:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XML_LANG:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    new-instance v0, Ljava/util/Hashtable;

    const/16 v6, 0x1d

    invoke-direct {v0, v6}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    const/16 v7, 0x4f

    invoke-direct {v0, v7}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const/16 v0, 0x9

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const-string v8, "anyURI"

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v8, v7, v2

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const-string v8, "ID"

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v8, v7, v1

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const-string v8, "QName"

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v8, v7, v4

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const-string v8, "string"

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v8, v7, v3

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const-string v8, "token"

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v9, 0x4

    aput-object v8, v7, v9

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const-string v8, "NCName"

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v10, 0x5

    aput-object v8, v7, v10

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aget-object v8, v7, v3

    const/4 v11, 0x6

    aput-object v8, v7, v11

    aget-object v8, v7, v3

    aput-object v8, v7, v11

    const-string v8, "language"

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v8, 0x8

    aput-object v0, v7, v8

    const/16 v0, 0x30

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    new-instance v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v15, -0xf

    invoke-direct {v7, v12, v15, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v7, v0, v2

    new-instance v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ATTRIBUTEFORMDEFAULT:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/4 v6, -0x6

    invoke-direct {v7, v12, v6, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v7, v0, v1

    new-instance v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    const/4 v14, 0x0

    invoke-direct {v7, v12, v4, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v7, v0, v4

    new-instance v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    invoke-direct {v7, v12, v4, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v7, v0, v3

    new-instance v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    invoke-direct {v7, v12, v5, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v7, v0, v9

    new-instance v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    const/4 v9, -0x2

    invoke-direct {v7, v12, v9, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v7, v0, v10

    new-instance v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCKDEFAULT:Ljava/lang/String;

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    sget-object v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct {v7, v9, v5, v12, v13}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v7, v0, v11

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    sget v9, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    invoke-direct {v5, v7, v3, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/4 v7, 0x7

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ELEMENTFORMDEFAULT:Ljava/lang/String;

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    sget-object v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct {v5, v9, v6, v12, v13}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v5, v0, v8

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    const/4 v13, -0x3

    invoke-direct {v5, v9, v13, v12, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v9, 0x9

    aput-object v5, v0, v9

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    const/4 v9, -0x4

    invoke-direct {v5, v12, v9, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v9, 0xa

    aput-object v5, v0, v9

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINALDEFAULT:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    sget-object v9, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/4 v7, -0x5

    invoke-direct {v5, v12, v7, v13, v9}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0xb

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    invoke-direct {v5, v9, v3, v12, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v9, 0xc

    aput-object v5, v0, v9

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v12, v15, v13, v7}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0xd

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    invoke-direct {v5, v12, v6, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0xe

    aput-object v5, v0, v6

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ID:I

    invoke-direct {v5, v12, v1, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v12, 0xf

    aput-object v5, v0, v12

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ITEMTYPE:Ljava/lang/String;

    sget v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    invoke-direct {v5, v13, v4, v7, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x10

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    sget v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    sget-object v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v6, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v6

    const/4 v12, -0x7

    invoke-direct {v5, v13, v12, v7, v6}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x11

    aput-object v5, v0, v6

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    sget-object v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v13, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v13

    const/4 v6, -0x8

    invoke-direct {v5, v7, v6, v12, v13}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x12

    aput-object v5, v0, v6

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MEMBERTYPES:Ljava/lang/String;

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    const/16 v13, -0x9

    invoke-direct {v5, v7, v13, v12, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x13

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v7, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v7

    const/16 v6, -0x10

    invoke-direct {v5, v12, v6, v13, v7}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x14

    aput-object v5, v0, v6

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget-object v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v13, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v13

    const/16 v1, -0xa

    invoke-direct {v5, v7, v1, v12, v13}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v1, 0x15

    aput-object v5, v0, v1

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v7, v15, v12, v13}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x16

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    invoke-direct {v5, v12, v15, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v12, 0x17

    aput-object v5, v0, v12

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    invoke-direct {v5, v13, v10, v1, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v1, 0x18

    aput-object v5, v0, v1

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/16 v6, -0xb

    invoke-direct {v5, v13, v6, v12, v7}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x19

    aput-object v5, v0, v6

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    invoke-direct {v5, v7, v2, v12, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x1a

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v12, v15, v13, v7}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x1b

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    sget-object v15, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/16 v6, -0xc

    invoke-direct {v5, v12, v6, v13, v15}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x1c

    aput-object v5, v0, v6

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PUBLIC:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    const/4 v15, 0x4

    invoke-direct {v5, v12, v15, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v12, 0x1d

    aput-object v5, v0, v12

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    invoke-direct {v5, v12, v4, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v12, 0x1e

    aput-object v5, v0, v12

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    sget v15, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    invoke-direct {v5, v13, v4, v15, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v13, 0x1f

    aput-object v5, v0, v13

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    invoke-direct {v5, v15, v2, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v13, 0x20

    aput-object v5, v0, v13

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    invoke-direct {v5, v15, v2, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v13, 0x21

    aput-object v5, v0, v13

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SOURCE:I

    invoke-direct {v5, v15, v2, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v13, 0x22

    aput-object v5, v0, v13

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SUBSTITUTIONGROUP:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    invoke-direct {v5, v15, v4, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v13, 0x23

    aput-object v5, v0, v13

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SYSTEM:Ljava/lang/String;

    sget v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    invoke-direct {v5, v15, v2, v6, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x24

    aput-object v5, v0, v6

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    sget v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    invoke-direct {v5, v15, v2, v6, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x25

    aput-object v5, v0, v6

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    sget v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    invoke-direct {v5, v15, v4, v6, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x26

    aput-object v5, v0, v6

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    sget-object v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/16 v7, -0xd

    invoke-direct {v5, v15, v7, v4, v13}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v4, 0x27

    aput-object v5, v0, v4

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v15, -0x10

    invoke-direct {v5, v7, v15, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x28

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    sget v15, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v7, -0x11

    invoke-direct {v5, v13, v7, v15, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x29

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    sget v15, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    invoke-direct {v5, v13, v3, v15, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v13, 0x2a

    aput-object v5, v0, v13

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    sget v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v7, -0xe

    invoke-direct {v5, v15, v7, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x2b

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VERSION:Ljava/lang/String;

    sget v15, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VERSION:I

    const/4 v7, 0x4

    invoke-direct {v5, v13, v7, v15, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x2c

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    sget v15, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XML_LANG:I

    invoke-direct {v5, v13, v8, v15, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v13, 0x2d

    aput-object v5, v0, v13

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    sget v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    invoke-direct {v5, v15, v11, v7, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x2e

    aput-object v5, v0, v7

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    sget v8, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    const/4 v13, 0x7

    invoke-direct {v5, v15, v13, v8, v14}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v8, 0x2f

    aput-object v5, v0, v8

    invoke-static {v10}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v5

    sget-object v14, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v15, v0, v13

    invoke-virtual {v5, v14, v15}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v14, v0, v9

    invoke-virtual {v5, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v14, 0xf

    aget-object v15, v0, v14

    invoke-virtual {v5, v13, v15}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v14, v0, v1

    invoke-virtual {v5, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v14, v0, v6

    invoke-virtual {v5, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v13, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v14, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v13, v14, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x7

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v13

    sget-object v14, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v15, v0, v5

    invoke-virtual {v13, v14, v15}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v14, v0, v9

    invoke-virtual {v13, v5, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    const/16 v14, 0xe

    aget-object v15, v0, v14

    invoke-virtual {v13, v5, v15}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v14, 0xf

    aget-object v15, v0, v14

    invoke-virtual {v13, v5, v15}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v14, v0, v1

    invoke-virtual {v13, v5, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v14, v0, v6

    invoke-virtual {v13, v5, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    aget-object v14, v0, v4

    invoke-virtual {v13, v5, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v14, "attribute_n"

    invoke-virtual {v5, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v5

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    const/4 v14, 0x7

    aget-object v15, v0, v14

    invoke-virtual {v5, v13, v15}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v14, v0, v9

    invoke-virtual {v5, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v14, 0xf

    aget-object v15, v0, v14

    invoke-virtual {v5, v13, v15}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v14, v0, v12

    invoke-virtual {v5, v13, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    aget-object v4, v0, v4

    invoke-virtual {v5, v13, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v13, "attribute_r"

    invoke-virtual {v4, v13, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v5

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    aget-object v13, v0, v2

    invoke-virtual {v5, v4, v13}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    const/4 v13, 0x4

    aget-object v14, v0, v13

    invoke-virtual {v5, v4, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    const/4 v13, 0x7

    aget-object v14, v0, v13

    invoke-virtual {v5, v4, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    const/16 v13, 0x9

    aget-object v14, v0, v13

    invoke-virtual {v5, v4, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v13, v0, v9

    invoke-virtual {v5, v4, v13}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v13, 0xf

    aget-object v14, v0, v13

    invoke-virtual {v5, v4, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v13, v0, v1

    invoke-virtual {v5, v4, v13}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    const/16 v13, 0x1b

    aget-object v14, v0, v13

    invoke-virtual {v5, v4, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SUBSTITUTIONGROUP:Ljava/lang/String;

    const/16 v13, 0x23

    aget-object v13, v0, v13

    invoke-virtual {v5, v4, v13}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v13, v0, v6

    invoke-virtual {v5, v4, v13}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v4, v13, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v5

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    const/4 v13, 0x4

    aget-object v14, v0, v13

    invoke-virtual {v5, v4, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    const/4 v13, 0x7

    aget-object v13, v0, v13

    invoke-virtual {v5, v4, v13}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v9, v0, v9

    invoke-virtual {v5, v4, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    const/16 v9, 0xe

    aget-object v9, v0, v9

    invoke-virtual {v5, v4, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v9, 0xf

    aget-object v13, v0, v9

    invoke-virtual {v5, v4, v13}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v9, 0x11

    aget-object v13, v0, v9

    invoke-virtual {v5, v4, v13}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v9, 0x14

    aget-object v13, v0, v9

    invoke-virtual {v5, v4, v13}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v9, v0, v1

    invoke-virtual {v5, v4, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    const/16 v9, 0x1b

    aget-object v9, v0, v9

    invoke-virtual {v5, v4, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v6, v0, v6

    invoke-virtual {v5, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v6, "element_n"

    invoke-virtual {v4, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v5

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v9, v0, v6

    invoke-virtual {v5, v4, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v6, 0x11

    aget-object v9, v0, v6

    invoke-virtual {v5, v4, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v6, 0x14

    aget-object v9, v0, v6

    invoke-virtual {v5, v4, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v6, v0, v12

    invoke-virtual {v5, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v6, "element_r"

    invoke-virtual {v4, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    aget-object v2, v0, v2

    invoke-virtual {v4, v5, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v5, v0, v10

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v5, v0, v5

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v6, v0, v5

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    const/16 v5, 0x16

    aget-object v6, v0, v5

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v5, v0, v1

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v6, v0, v5

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v5, v0, v1

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PUBLIC:Ljava/lang/String;

    const/16 v5, 0x1d

    aget-object v5, v0, v5

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SYSTEM:Ljava/lang/String;

    const/16 v5, 0x24

    aget-object v5, v0, v5

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v6, v0, v5

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    const/16 v6, 0x16

    aget-object v6, v0, v6

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v0, v5

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    aget-object v9, v0, v3

    invoke-virtual {v4, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v0, v5

    invoke-virtual {v4, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v6, v9, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    aget-object v9, v0, v2

    invoke-virtual {v4, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v0, v5

    invoke-virtual {v4, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v6, v9, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v0, v5

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v6, v0, v12

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    const/16 v5, 0x19

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    const/16 v5, 0x1c

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v9, v0, v6

    invoke-virtual {v4, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    const/16 v9, 0x17

    aget-object v9, v0, v9

    invoke-virtual {v4, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    invoke-virtual {v5, v9, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v0, v6

    invoke-virtual {v4, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v9, v0, v1

    invoke-virtual {v4, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v5, v9, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v0, v6

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v5, v0, v1

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v0, v6

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v5, 0x11

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v5, 0x14

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v5, v0, v12

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v5, 0x12

    aget-object v5, v0, v5

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v5, 0x15

    aget-object v5, v0, v5

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v5, 0x11

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v5, 0x14

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v5, 0x11

    aget-object v5, v0, v5

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v5, 0x14

    aget-object v5, v0, v5

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    const/16 v5, 0x19

    aget-object v5, v0, v5

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    const/16 v5, 0x1c

    aget-object v5, v0, v5

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANY:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v6, v0, v5

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v5, v0, v1

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v5, v0, v1

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    const/16 v5, 0x1f

    aget-object v5, v0, v5

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v9, v0, v6

    invoke-virtual {v4, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aget-object v7, v0, v7

    invoke-virtual {v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v0, v6

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aget-object v5, v0, v8

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v7, v0, v6

    invoke-virtual {v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    const/16 v5, 0x22

    aget-object v6, v0, v5

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    aget-object v5, v0, v5

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    const/16 v5, 0x2d

    aget-object v6, v0, v5

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v1, v0, v1

    invoke-virtual {v2, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v5, v0, v5

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ITEMTYPE:Ljava/lang/String;

    const/16 v6, 0x10

    aget-object v6, v0, v6

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v4, v0, v5

    invoke-virtual {v2, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MEMBERTYPES:Ljava/lang/String;

    const/16 v4, 0x13

    aget-object v4, v0, v4

    invoke-virtual {v2, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ATTRIBUTEFORMDEFAULT:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCKDEFAULT:Ljava/lang/String;

    aget-object v5, v0, v11

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ELEMENTFORMDEFAULT:Ljava/lang/String;

    aget-object v1, v0, v1

    invoke-virtual {v2, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINALDEFAULT:Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v4, v0, v4

    invoke-virtual {v2, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v5, v0, v4

    invoke-virtual {v2, v1, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    const/16 v4, 0x25

    aget-object v4, v0, v4

    invoke-virtual {v2, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VERSION:Ljava/lang/String;

    const/16 v4, 0x2c

    aget-object v4, v0, v4

    invoke-virtual {v2, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    const/16 v4, 0x2d

    aget-object v4, v0, v4

    invoke-virtual {v2, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v5, v0, v4

    invoke-virtual {v2, v1, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    const/16 v4, 0x20

    aget-object v4, v0, v4

    invoke-virtual {v2, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v5, v0, v4

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v4, v0, v4

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    const/16 v4, 0x21

    aget-object v4, v0, v4

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v5, v0, v4

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v4, 0x28

    aget-object v4, v0, v4

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v5, v0, v4

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FRACTIONDIGITS:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v5, v0, v4

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v4, 0x29

    aget-object v4, v0, v4

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v5, v0, v4

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_TOTALDIGITS:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v6, v0, v5

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v6, 0x2a

    aget-object v7, v0, v6

    invoke-virtual {v2, v4, v7}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    invoke-virtual {v4, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v4, v0, v5

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v4, v0, v6

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v4, v0, v5

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v4, 0x2b

    aget-object v4, v0, v4

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v5, v0, v4

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_WHITESPACE:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXINCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MININCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v1, v0, [Z

    sput-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeenTemp:[Z

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fTempArray:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    const/16 v1, 0xa

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    return-void
.end method

.method public static normalize(Ljava/lang/String;S)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_a

    if-nez p1, :cond_1

    goto/16 :goto_8

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0xd

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-ne p1, v7, :cond_4

    :goto_1
    if-lt v0, v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move p1, v0

    move v8, v7

    :goto_3
    if-lt p1, v1, :cond_5

    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v5, :cond_6

    if-eq v9, v4, :cond_6

    if-eq v9, v3, :cond_6

    if-eq v9, v6, :cond_6

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v8, v0

    goto :goto_7

    :cond_6
    :goto_5
    add-int/lit8 v9, v1, -0x1

    if-lt p1, v9, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v10, p1, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v5, :cond_9

    if-eq v11, v4, :cond_9

    if-eq v11, v3, :cond_9

    if-eq v11, v6, :cond_9

    :goto_6
    if-ge p1, v9, :cond_8

    if-nez v8, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    :goto_7
    add-int/2addr p1, v7

    goto :goto_3

    :cond_9
    move p1, v10

    goto :goto_5

    :cond_a
    :goto_8
    return-object p0
.end method

.method private validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-static {p3}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x2b

    const/16 v2, 0x1f

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch p4, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    const-string p1, "#all"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/StringTokenizer;

    const-string p2, " \n\t\r"

    invoke-direct {p1, p3, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    :goto_0
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_2

    :goto_1
    sget-object p1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    goto/16 :goto_d

    :cond_2
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    const-string p4, "extension"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p4, "restriction"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_4
    const-string p4, "substitution"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    or-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_5
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(#all | List of (extension | restriction | substitution))"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.3"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_1
    const-string p1, "#all"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/util/StringTokenizer;

    const-string p2, " \n\t\r"

    invoke-direct {p1, p3, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    :goto_2
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_7

    :goto_3
    sget-object p1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    goto/16 :goto_d

    :cond_7
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    const-string p4, "extension"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    or-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    const-string p4, "restriction"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    or-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_9
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(#all | List of (extension | restriction))"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.3"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_2
    const-string p1, "#all"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/util/StringTokenizer;

    const-string p2, " \n\t\r"

    invoke-direct {p1, p3, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    :goto_4
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_b

    :goto_5
    sget-object p1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    goto/16 :goto_d

    :cond_b
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    const-string p4, "list"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    or-int/lit8 v2, v2, 0x10

    goto :goto_4

    :cond_c
    const-string p4, "union"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    or-int/lit8 v2, v2, 0x8

    goto :goto_4

    :cond_d
    const-string p4, "restriction"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    or-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_e
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(#all | List of (list | union | restriction))"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.3"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_3
    const-string p1, "#all"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_7

    :cond_f
    new-instance p1, Ljava/util/StringTokenizer;

    const-string p2, " \n\t\r"

    invoke-direct {p1, p3, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    :goto_6
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_10

    :goto_7
    sget-object p1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    goto/16 :goto_d

    :cond_10
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    const-string p4, "extension"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_11

    or-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    const-string p4, "restriction"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_12

    or-int/lit8 v2, v2, 0x2

    goto :goto_6

    :cond_12
    const-string p4, "list"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_13

    or-int/lit8 v2, v2, 0x10

    goto :goto_6

    :cond_13
    const-string p4, "union"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    or-int/lit8 v2, v2, 0x8

    goto :goto_6

    :cond_14
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(#all | List of (extension | restriction | list | union))"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.3"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_4
    const-string p1, "qualified"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_15
    const-string p1, "unqualified"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_16
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(qualified | unqualified)"

    aput-object p3, p2, v8

    const-string p3, "cvc-enumeration-valid"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_5
    const-string p4, "unbounded"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_17

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_17
    const/16 v5, -0x10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_d

    :catch_0
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(nonNegativeInteger | unbounded)"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.3"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_6
    const-string p1, "1"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    sget-object p1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {p1, v8}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    goto/16 :goto_d

    :cond_18
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(1)"

    aput-object p3, p2, v8

    const-string p3, "cvc-enumeration-valid"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_7
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    :try_start_1
    new-instance p2, Ljava/util/StringTokenizer;

    const-string p4, " \n\t\r"

    invoke-direct {p2, p3, p4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p4

    if-nez p4, :cond_19

    move-object v0, p1

    goto/16 :goto_d

    :cond_19
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p4

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aget-object v1, v1, v7

    iget-object v2, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v1, p4, v2, v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lmf/org/apache/xerces/xni/QName;

    iget-object v1, p4, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v1, v2, :cond_1a

    iget-object v1, p4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v1, :cond_1a

    iget-boolean v1, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v1, :cond_1a

    iget-object v1, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v1, p4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :cond_1a
    invoke-virtual {p1, p4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(List of QName)"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.2"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_8
    const-string p1, "0"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    sget-object p1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {p1, v9}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    goto/16 :goto_d

    :cond_1b
    const-string p1, "1"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    sget-object p1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {p1, v8}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0

    goto/16 :goto_d

    :cond_1c
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(0 | 1)"

    aput-object p3, p2, v8

    const-string p3, "cvc-enumeration-valid"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_9
    const-string p2, "##any"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_1d
    const-string p2, "##other"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    sget-object p2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    new-array p3, v7, [Ljava/lang/String;

    iget-object p4, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object p4, p3, v9

    aput-object v0, p3, v8

    sget p4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object p3, p1, p4

    move-object v0, p2

    goto/16 :goto_d

    :cond_1e
    sget-object p2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {p4}, Ljava/util/Vector;->removeAllElements()V

    new-instance p4, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {p4, p3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_9
    :try_start_2
    invoke-virtual {p4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v1, :cond_20

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {p4, p3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    sget p4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object p3, p1, p4

    move-object v0, p2

    goto/16 :goto_d

    :cond_20
    :try_start_3
    invoke-virtual {p4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "##local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object v1, v0

    goto :goto_a

    :cond_21
    const-string v2, "##targetNamespace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v1, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    goto :goto_a

    :cond_22
    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aget-object v2, v2, v9

    iget-object v3, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v2, v1, v3, v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_9

    :catch_2
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "((##any | ##other) | List of (anyURI | (##targetNamespace | ##local)) )"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.3"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_a
    const-string p1, "strict"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_23
    const-string p1, "lax"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_24
    const-string p1, "skip"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_25
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(lax | skip | strict)"

    aput-object p3, p2, v8

    const-string p3, "cvc-enumeration-valid"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_b
    const-string p1, "optional"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_26
    const-string p1, "required"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_27
    const-string p1, "prohibited"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_28
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(optional | prohibited | required)"

    aput-object p3, p2, v8

    const-string p3, "cvc-enumeration-valid"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_c
    const-string p1, "preserve"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_29
    const-string p1, "replace"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_2a
    const-string p1, "collapse"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_d

    :cond_2b
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "(preserve | replace | collapse)"

    aput-object p3, p2, v8

    const-string p3, "cvc-enumeration-valid"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_d
    const-string p1, "false"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    const-string p1, "0"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_c

    :cond_2c
    const-string p1, "true"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    const-string p1, "1"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_b

    :cond_2d
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "boolean"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.1"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2e
    :goto_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    :cond_2f
    :goto_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    :pswitch_e
    :try_start_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_30

    invoke-virtual {p3, v9}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_30

    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object p3, p1

    :cond_30
    sget-object p1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-object p1, v0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result p1

    if-ltz p1, :cond_31

    goto :goto_d

    :cond_31
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "nonNegativeInteger"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.1"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :catch_3
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "nonNegativeInteger"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.1"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_f
    :try_start_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_32

    invoke-virtual {p3, v9}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_32

    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object p3, p1

    :cond_32
    sget-object p1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    move-object p1, v0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result p1

    if-lez p1, :cond_33

    goto :goto_d

    :cond_33
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "positiveInteger"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.1"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :catch_4
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p3, p2, v9

    const-string p3, "positiveInteger"

    aput-object p3, p2, v8

    const-string p3, "cvc-datatype-valid.1.2.1"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :goto_d
    return-object v0

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    const/4 v10, 0x0

    if-nez v8, :cond_0

    return-object v10

    :cond_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrs(Lmf/org/w3c/dom/Element;)[Lmf/org/w3c/dom/Attr;

    move-result-object v11

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v7, v8, v11, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->resolveNamespace(Lmf/org/w3c/dom/Element;[Lmf/org/w3c/dom/Attr;Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v0, :cond_1

    const-string v0, "s4s-elt-schema-ns"

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v12, v1, v13

    invoke-virtual {v7, v0, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    if-nez p2, :cond_6

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-static {v8, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "element_r"

    goto :goto_0

    :cond_2
    const-string v1, "element_n"

    goto :goto_0

    :cond_3
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-static {v8, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "attribute_r"

    goto :goto_0

    :cond_4
    const-string v1, "attribute_n"

    goto :goto_0

    :cond_5
    move-object v1, v12

    goto :goto_0

    :cond_6
    move-object v1, v12

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lmf/org/apache/xerces/impl/xs/traversers/Container;

    if-nez v15, :cond_7

    const-string v0, "s4s-elt-invalid"

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v12, v1, v13

    invoke-virtual {v7, v0, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v10

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->getAvailableArray()[Ljava/lang/Object;

    move-result-object v16

    const-wide/16 v17, 0x0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeenTemp:[Z

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    invoke-static {v0, v13, v1, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v11

    move v5, v13

    :goto_1
    const/4 v4, 0x3

    const/4 v3, 0x2

    if-lt v5, v6, :cond_b

    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/traversers/Container;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move v1, v13

    move-wide/from16 v5, v17

    :goto_2
    array-length v2, v0

    if-lt v1, v2, :cond_9

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v16, v0

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v0, v16, v0

    if-eqz v0, :cond_8

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v0, v16, v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v1, v16, v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    if-le v0, v1, :cond_8

    const-string v0, "p-props-correct.2.1"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v12, v1, v13

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v2, v16, v2

    aput-object v2, v1, v14

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v2, v16, v2

    aput-object v2, v1, v3

    invoke-virtual {v7, v0, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v1, v16, v1

    aput-object v1, v16, v0

    :cond_8
    return-object v16

    :cond_9
    aget-object v2, v0, v1

    iget-object v9, v2, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    if-eqz v9, :cond_a

    iget-object v9, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    iget v10, v2, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aget-boolean v9, v9, v10

    if-nez v9, :cond_a

    iget v9, v2, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    iget-object v10, v2, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    aput-object v10, v16, v9

    iget v2, v2, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    shl-int v2, v14, v2

    int-to-long v9, v2

    or-long/2addr v5, v9

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    aget-object v0, v11, v5

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "xml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getPrefix(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "xmlns"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "xmlns"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v10, v5

    move/from16 v19, v6

    move v3, v13

    move v4, v14

    goto/16 :goto_7

    :cond_c
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_3

    :cond_e
    move v10, v5

    move/from16 v19, v6

    move v3, v13

    move v4, v14

    goto/16 :goto_7

    :cond_f
    :goto_3
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "s4s-att-not-allowed"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v12, v1, v13

    aput-object v2, v1, v14

    invoke-virtual {v7, v0, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move v10, v5

    move/from16 v19, v6

    move v3, v13

    move v4, v14

    goto/16 :goto_7

    :cond_10
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v1, v16, v0

    if-nez v1, :cond_11

    new-instance v1, Ljava/util/Vector;

    const/4 v4, 0x4

    invoke-direct {v1, v4, v3}, Ljava/util/Vector;-><init>(II)V

    aput-object v1, v16, v0

    :cond_11
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v0, v16, v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v0, v16, v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v10, v5

    move/from16 v19, v6

    move v3, v13

    move v4, v14

    goto/16 :goto_7

    :cond_12
    invoke-virtual {v15, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->get(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move-result-object v4

    if-nez v4, :cond_13

    const-string v0, "s4s-att-not-allowed"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v12, v1, v13

    aput-object v2, v1, v14

    invoke-virtual {v7, v0, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move v10, v5

    move/from16 v19, v6

    move v3, v13

    move v4, v14

    goto/16 :goto_7

    :cond_13
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    iget v1, v4, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aput-boolean v14, v0, v1

    :try_start_0
    iget v0, v4, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    if-ltz v0, :cond_18

    iget v0, v4, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    :try_start_1
    iget v0, v4, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_16

    :try_start_2
    iget v0, v4, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_15

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget v1, v4, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    aget-object v0, v0, v1

    iget-object v1, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v14, 0x0

    invoke-interface {v0, v10, v1, v14}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    if-ne v1, v3, :cond_14

    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v10, v3, :cond_14

    iget-object v3, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v3, :cond_14

    iget-boolean v3, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v3, :cond_14

    iget-object v3, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v3, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :cond_14
    iget v1, v4, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aput-object v0, v16, v1

    move v10, v5

    move/from16 v19, v6

    move v3, v13

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_15
    const/4 v14, 0x0

    goto :goto_4

    :cond_16
    const/4 v14, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    move v13, v1

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object v14, v4

    move v10, v5

    move/from16 v19, v6

    goto :goto_5

    :cond_17
    const/4 v14, 0x0

    :goto_4
    iget v0, v4, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aput-object v10, v16, v0

    move v10, v5

    move/from16 v19, v6

    move v3, v13

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_18
    const/4 v14, 0x0

    iget v0, v4, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    iget v3, v4, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v20, 0x3

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object/from16 v2, v16

    move/from16 v19, v3

    const/16 v22, 0x2

    move-object/from16 v3, v21

    move-object v14, v4

    move/from16 v13, v20

    move-object v4, v10

    move v10, v5

    move/from16 v5, v19

    move/from16 v19, v6

    move-object/from16 v6, p3

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v16, v0
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v21, v2

    move-object v14, v4

    move v10, v5

    move/from16 v19, v6

    const/4 v13, 0x3

    const/16 v22, 0x2

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object v14, v4

    move v10, v5

    move/from16 v19, v6

    const/4 v13, 0x3

    :goto_5
    const-string v1, "s4s-att-invalid-value"

    new-array v2, v13, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v4, 0x1

    aput-object v21, v2, v4

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v22

    invoke-virtual {v7, v1, v2, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, v14, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    if-eqz v0, :cond_19

    iget v0, v14, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    iget-object v1, v14, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    aput-object v1, v16, v0

    :cond_19
    :goto_6
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p4, :cond_1a

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    new-instance v1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v2, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    aput-object v1, v16, v0

    :cond_1a
    :goto_7
    add-int/lit8 v5, v10, 0x1

    move v13, v3

    move v14, v4

    move/from16 v6, v19

    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method public checkNonSchemaAttributes(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 13

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    move v7, v6

    :goto_1
    if-lt v7, v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v1, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2, v9, v10, v10}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    const-string v11, "s4s-att-invalid-value"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v8, v12, v5

    aput-object v3, v12, v6

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v12, v9

    invoke-virtual {p0, v11, v12, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_1
.end method

.method protected getAvailableArray()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v1, 0xa

    new-array v0, v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    aget-object v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    const/4 v3, 0x0

    aput-object v3, v0, v1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fTempArray:[Ljava/lang/Object;

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v2, v0

    return-object v2
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-void
.end method

.method public reset(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public resolveNamespace(Lmf/org/w3c/dom/Element;[Lmf/org/w3c/dom/Attr;Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V
    .locals 5

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->pushContext()V

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    aget-object v1, p2, v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v4

    :goto_2
    invoke-virtual {p3, v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->popContext()V

    :cond_0
    iget p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    array-length p2, p1

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    if-ne p2, v0, :cond_3

    sget p2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    aget-object p2, p1, p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget p2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, p1, p2

    sget p2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v0, p1, p2

    if-eqz v0, :cond_2

    aget-object p2, p1, p2

    check-cast p2, Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    :cond_2
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    aput-object p1, p2, v0

    return-void

    :cond_3
    :goto_0
    return-void
.end method
