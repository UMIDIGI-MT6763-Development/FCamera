.class public Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.super Ljava/lang/Object;
.source "XSSimpleTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/XSSimpleType;
.implements Lmf/org/w3c/dom/TypeInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;
    }
.end annotation


# static fields
.field public static final ANYATOMICTYPE_DT:S = 0x31s

.field static final ANY_TYPE:Ljava/lang/String; = "anyType"

.field public static final DAYTIMEDURATION_DT:S = 0x2fs

.field static final DERIVATION_ANY:I = 0x0

.field static final DERIVATION_EXTENSION:I = 0x2

.field static final DERIVATION_LIST:I = 0x8

.field static final DERIVATION_RESTRICTION:I = 0x1

.field static final DERIVATION_UNION:I = 0x4

.field protected static final DV_ANYATOMICTYPE:S = 0x1ds

.field protected static final DV_ANYSIMPLETYPE:S = 0x0s

.field protected static final DV_ANYURI:S = 0x11s

.field protected static final DV_BASE64BINARY:S = 0x10s

.field protected static final DV_BOOLEAN:S = 0x2s

.field protected static final DV_DATE:S = 0x9s

.field protected static final DV_DATETIME:S = 0x7s

.field protected static final DV_DAYTIMEDURATION:S = 0x1cs

.field protected static final DV_DECIMAL:S = 0x3s

.field protected static final DV_DOUBLE:S = 0x5s

.field protected static final DV_DURATION:S = 0x6s

.field protected static final DV_ENTITY:S = 0x17s

.field protected static final DV_FLOAT:S = 0x4s

.field protected static final DV_GDAY:S = 0xds

.field protected static final DV_GMONTH:S = 0xes

.field protected static final DV_GMONTHDAY:S = 0xcs

.field protected static final DV_GYEAR:S = 0xbs

.field protected static final DV_GYEARMONTH:S = 0xas

.field protected static final DV_HEXBINARY:S = 0xfs

.field protected static final DV_ID:S = 0x15s

.field protected static final DV_IDREF:S = 0x16s

.field protected static final DV_INTEGER:S = 0x18s

.field protected static final DV_LIST:S = 0x19s

.field protected static final DV_NOTATION:S = 0x14s

.field protected static final DV_PRECISIONDECIMAL:S = 0x13s

.field protected static final DV_QNAME:S = 0x12s

.field protected static final DV_STRING:S = 0x1s

.field protected static final DV_TIME:S = 0x8s

.field protected static final DV_UNION:S = 0x1as

.field protected static final DV_YEARMONTHDURATION:S = 0x1bs

.field static final NORMALIZE_FULL:S = 0x2s

.field static final NORMALIZE_NONE:S = 0x0s

.field static final NORMALIZE_TRIM:S = 0x1s

.field public static final PRECISIONDECIMAL_DT:S = 0x30s

.field static final SPECIAL_PATTERN_NAME:S = 0x2s

.field static final SPECIAL_PATTERN_NCNAME:S = 0x3s

.field static final SPECIAL_PATTERN_NMTOKEN:S = 0x1s

.field static final SPECIAL_PATTERN_NONE:S = 0x0s

.field static final SPECIAL_PATTERN_STRING:[Ljava/lang/String;

.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static final WS_FACET_STRING:[Ljava/lang/String;

.field public static final YEARMONTHDURATION_DT:S = 0x2es

.field static final fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field static final fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field static final fDVNormalizeType:[S

.field static final fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

.field static final fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

.field private static final gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;


# instance fields
.field public enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fAnonymous:Z

.field private fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fBounded:Z

.field private fBuiltInKind:S

.field private fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

.field private fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field private fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fEnumerationSize:I

.field private fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

.field private fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field private fFacetsDefined:S

.field private fFinalSet:S

.field private fFinite:Z

.field private fFixedFacet:S

.field private fFractionDigits:I

.field private fIsImmutable:Z

.field private fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fLength:I

.field private fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

.field private fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

.field private fMaxExclusive:Ljava/lang/Object;

.field private fMaxInclusive:Ljava/lang/Object;

.field private fMaxLength:I

.field private fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fMinExclusive:Ljava/lang/Object;

.field private fMinInclusive:Ljava/lang/Object;

.field private fMinLength:I

.field private fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field private fNumeric:Z

.field private fOrdered:S

.field private fPattern:Ljava/util/Vector;

.field private fPatternStr:Ljava/util/Vector;

.field private fPatternType:S

.field private fTargetNamespace:Ljava/lang/String;

.field private fTotalDigits:I

.field private fTypeName:Ljava/lang/String;

.field private fValidationDV:S

.field private fVariety:S

.field private fWhiteSpace:S

.field public fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const/16 v0, 0x1e

    new-array v1, v0, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnySimpleDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnySimpleDV;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/StringDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/StringDV;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/BooleanDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/BooleanDV;-><init>()V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;-><init>()V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/FloatDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV;-><init>()V

    const/4 v6, 0x4

    aput-object v2, v1, v6

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;-><init>()V

    const/4 v7, 0x5

    aput-object v2, v1, v7

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;-><init>()V

    const/4 v8, 0x6

    aput-object v2, v1, v8

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;-><init>()V

    const/4 v9, 0x7

    aput-object v2, v1, v9

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;-><init>()V

    const/16 v10, 0x8

    aput-object v2, v1, v10

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DateDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;-><init>()V

    const/16 v11, 0x9

    aput-object v2, v1, v11

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDV;-><init>()V

    const/16 v12, 0xa

    aput-object v2, v1, v12

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;-><init>()V

    const/16 v13, 0xb

    aput-object v2, v1, v13

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;-><init>()V

    const/16 v14, 0xc

    aput-object v2, v1, v14

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DayDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;-><init>()V

    const/16 v15, 0xd

    aput-object v2, v1, v15

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;-><init>()V

    const/16 v16, 0xe

    aput-object v2, v1, v16

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;-><init>()V

    const/16 v17, 0xf

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;-><init>()V

    const/16 v17, 0x10

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;-><init>()V

    const/16 v17, 0x11

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    const/16 v17, 0x12

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;-><init>()V

    const/16 v17, 0x13

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    const/16 v17, 0x14

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IDDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IDDV;-><init>()V

    const/16 v17, 0x15

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IDREFDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IDREFDV;-><init>()V

    const/16 v17, 0x16

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/EntityDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/EntityDV;-><init>()V

    const/16 v17, 0x17

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;-><init>()V

    const/16 v17, 0x18

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/ListDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/ListDV;-><init>()V

    const/16 v17, 0x19

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/UnionDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/UnionDV;-><init>()V

    const/16 v17, 0x1a

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;-><init>()V

    const/16 v17, 0x1b

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;-><init>()V

    const/16 v17, 0x1c

    aput-object v2, v1, v17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnyAtomicDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnyAtomicDV;-><init>()V

    const/16 v17, 0x1d

    aput-object v2, v1, v17

    sput-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    new-array v0, v0, [S

    aput-short v4, v0, v3

    aput-short v3, v0, v4

    aput-short v3, v0, v5

    aput-short v3, v0, v6

    aput-short v3, v0, v7

    aput-short v3, v0, v8

    aput-short v3, v0, v9

    aput-short v3, v0, v10

    aput-short v3, v0, v11

    aput-short v3, v0, v12

    aput-short v3, v0, v13

    aput-short v3, v0, v14

    aput-short v3, v0, v15

    aput-short v3, v0, v16

    const/16 v1, 0xf

    aput-short v3, v0, v1

    const/16 v1, 0x11

    aput-short v3, v0, v1

    const/16 v1, 0x12

    aput-short v3, v0, v1

    const/16 v1, 0x13

    aput-short v3, v0, v1

    const/16 v1, 0x14

    aput-short v3, v0, v1

    const/16 v1, 0x15

    aput-short v3, v0, v1

    const/16 v1, 0x16

    aput-short v3, v0, v1

    const/16 v1, 0x17

    aput-short v3, v0, v1

    const/16 v1, 0x18

    aput-short v3, v0, v1

    const/16 v1, 0x19

    aput-short v4, v0, v1

    const/16 v1, 0x1b

    aput-short v3, v0, v1

    const/16 v1, 0x1c

    aput-short v3, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    const-string v0, "NONE"

    const-string v1, "NMTOKEN"

    const-string v2, "Name"

    const-string v3, "NCName"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    const-string v0, "preserve"

    const-string v1, "replace"

    const-string v2, "collapse"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "anySimpleType"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v13, "anyAtomicType"

    const/16 v14, 0x1d

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x31

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$2;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$2;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    const/4 v1, -0x1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    const/4 v1, -0x1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 p1, 0x2

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p2, 0x19

    iput-short p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 p2, 0x10

    iput-short p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    const/16 p1, 0x2c

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    const/4 v1, -0x1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 p1, 0x3

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p1, 0x1a

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 p1, 0x10

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 p1, 0x2

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    const/16 p1, 0x2d

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    const/4 v1, -0x1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iget-short p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iget-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    :pswitch_1
    iget-object p2, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    :goto_0
    :pswitch_2
    iget-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iget-short p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-short p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iget-short p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-short p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object p2, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iget-short p1, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    iput-short p7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    const/4 v1, -0x1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-boolean p8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string p1, "http://www.w3.org/2001/XMLSchema"

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 p1, 0x1

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 p2, 0x10

    iput-short p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz p3, :cond_1

    const/16 p8, 0x1d

    if-eq p3, p8, :cond_1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto :goto_1

    :cond_1
    :goto_0
    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    :goto_1
    iput-short p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    iput-boolean p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    iput-boolean p7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short p9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object p0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I
    .locals 0

    iget p0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    return p0
.end method

.method private appendEnumString(Ljava/lang/StringBuffer;)V
    .locals 2

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private calcFundamentalFacets()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setOrdered()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNumeric()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setBounded()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setCardinality()V

    return-void
.end method

.method private checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p2, p2, v1

    invoke-virtual {p2, v0, p1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->checkExtraRules(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    goto :goto_3

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    iget-object v1, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->getLength()I

    move-result v3

    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    iget-object v4, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v4, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sub-int/2addr v3, v2

    :goto_0
    if-gez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    aget-object v2, v4, v3

    iput-object v2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v2, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v2

    :goto_1
    if-gez v3, :cond_3

    :goto_2
    iput-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v1, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_3

    :cond_3
    :try_start_1
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v2, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v1, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    throw p1

    :cond_4
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    :goto_3
    return-void
.end method

.method private checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-short v2, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x12

    if-eq v3, v8, :cond_5

    const/16 v8, 0x14

    if-eq v3, v8, :cond_5

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    aget-object v3, v8, v3

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getDataLength(Ljava/lang/Object;)I

    move-result v3

    iget-short v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v9, 0x4

    and-int/2addr v8, v9

    if-eqz v8, :cond_1

    iget v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-gt v3, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v1, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string v1, "cvc-maxLength-valid"

    invoke-direct {p1, v1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-short v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v8, v5

    if-eqz v8, :cond_3

    iget v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-lt v3, v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v1, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string v1, "cvc-minLength-valid"

    invoke-direct {p1, v1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    iget-short v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v8, v7

    if-eqz v8, :cond_5

    iget v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-ne v3, v8, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v1, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string v1, "cvc-length-valid"

    invoke-direct {p1, v1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_13

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v2

    move v8, v6

    :goto_3
    if-lt v8, v3, :cond_6

    move p1, v6

    goto/16 :goto_9

    :cond_6
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v9, v9, v8

    iget-short v9, v9, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-direct {p0, v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v9

    if-eq v2, v9, :cond_8

    if-ne v2, v7, :cond_7

    if-eq v9, v5, :cond_8

    :cond_7
    if-ne v2, v5, :cond_12

    if-ne v9, v7, :cond_12

    :cond_8
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v9, v9, v8

    iget-object v9, v9, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    const/16 v9, 0x2c

    if-eq v2, v9, :cond_a

    const/16 v9, 0x2b

    if-ne v2, v9, :cond_9

    goto :goto_4

    :cond_9
    move p1, v7

    goto :goto_9

    :cond_a
    :goto_4
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v9, v9, v8

    iget-object v9, v9, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v10

    goto :goto_5

    :cond_b
    move v10, v6

    :goto_5
    if-eqz v9, :cond_c

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v11

    goto :goto_6

    :cond_c
    move v11, v6

    :goto_6
    if-ne v10, v11, :cond_12

    move v11, v6

    :goto_7
    if-lt v11, v10, :cond_d

    goto :goto_8

    :cond_d
    invoke-interface {p1, v11}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v12

    invoke-direct {p0, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v12

    invoke-interface {v9, v11}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v13

    invoke-direct {p0, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v13

    if-eq v12, v13, :cond_11

    if-ne v12, v7, :cond_e

    if-eq v13, v5, :cond_11

    :cond_e
    if-ne v12, v5, :cond_f

    if-ne v13, v7, :cond_f

    goto :goto_a

    :cond_f
    :goto_8
    if-ne v11, v10, :cond_12

    move p1, v7

    :goto_9
    if-eqz p1, :cond_10

    goto :goto_b

    :cond_10
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->appendEnumString(Ljava/lang/StringBuffer;)V

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    const-string p1, "cvc-enumeration-valid"

    invoke-direct {v0, p1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_11
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_13
    :goto_b
    iget-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_15

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getFractionDigits(Ljava/lang/Object;)I

    move-result p1

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-gt p1, v2, :cond_14

    goto :goto_c

    :cond_14
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    iget p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    const-string p1, "cvc-fractionDigits-valid"

    invoke-direct {v0, p1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_15
    :goto_c
    iget-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_17

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getTotalDigits(Ljava/lang/Object;)I

    move-result p1

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-gt p1, v2, :cond_16

    goto :goto_d

    :cond_16
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    iget p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    const-string p1, "cvc-totalDigits-valid"

    invoke-direct {v0, p1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_17
    :goto_d
    iget-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 p1, p1, 0x20

    const/4 v2, -0x1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v2, :cond_19

    if-nez p1, :cond_18

    goto :goto_e

    :cond_18
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v1, v0, v7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string v1, "cvc-maxInclusive-valid"

    invoke-direct {p1, v1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_19
    :goto_e
    iget-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v2, :cond_1a

    goto :goto_f

    :cond_1a
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    aput-object v1, v0, v7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string v1, "cvc-maxExclusive-valid"

    invoke-direct {p1, v1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1b
    :goto_f
    iget-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v7, :cond_1d

    if-nez p1, :cond_1c

    goto :goto_10

    :cond_1c
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v1, v0, v7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string v1, "cvc-minInclusive-valid"

    invoke-direct {p1, v1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1d
    :goto_10
    iget-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v7, :cond_1e

    goto :goto_11

    :cond_1e
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    aput-object v1, v0, v7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string v1, "cvc-minExclusive-valid"

    invoke-direct {p1, v1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1f
    :goto_11
    return-void
.end method

.method private convertToPrimitiveKind(S)S
    .locals 1

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x1d

    if-gt p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/16 v0, 0x2a

    if-gt p1, v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    return p1
.end method

.method private getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-eqz p4, :cond_0

    iget-short p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-virtual {p0, p1, p4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_1
    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-virtual {v5, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    new-instance p2, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v3

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p3, v4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object p1, p3, v2

    const-string p1, "cvc-pattern-valid"

    invoke-direct {p2, p1, p3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_3
    :goto_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-ne v0, v4, :cond_9

    iget-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz p1, :cond_8

    if-ne p1, v4, :cond_4

    invoke-static {p4}, Lmf/org/apache/xerces/util/XMLChar;->isValidNmtoken(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v4

    goto :goto_3

    :cond_4
    if-ne p1, v2, :cond_5

    invoke-static {p4}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v4

    goto :goto_3

    :cond_5
    if-ne p1, v1, :cond_6

    invoke-static {p4}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v4

    goto :goto_3

    :cond_6
    move p1, v3

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p4, p2, v3

    sget-object p3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    iget-short p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    aget-object p3, p3, p4

    aput-object p3, p2, v4

    const-string p3, "cvc-datatype-valid.1.2.1"

    invoke-direct {p1, p3, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_8
    :goto_4
    iput-object p4, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v0

    invoke-virtual {p1, p4, p2}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    iput-short p2, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iput-object p0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object p1

    :cond_9
    const/16 v5, 0x10

    if-ne v0, v2, :cond_11

    new-instance v0, Ljava/util/StringTokenizer;

    const-string p1, " "

    invoke-direct {v0, p4, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    new-array v7, v6, [Ljava/lang/Object;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result p1

    if-ne p1, v1, :cond_a

    move v8, v4

    goto :goto_5

    :cond_a
    move v8, v3

    :goto_5
    if-eqz v8, :cond_b

    move v4, v6

    :cond_b
    new-array v9, v4, [S

    if-nez v8, :cond_c

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short p1, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    aput-short p1, v9, v3

    :cond_c
    new-array v10, v6, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move p1, v3

    :goto_6
    if-lt p1, v6, :cond_e

    new-instance p1, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    invoke-direct {p1, v7}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;-><init>([Ljava/lang/Object;)V

    iput-object p1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    if-eqz v8, :cond_d

    const/16 p2, 0x2b

    goto :goto_7

    :cond_d
    const/16 p2, 0x2c

    :goto_7
    iput-short p2, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    const/4 p2, 0x0

    iput-object p2, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v10, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    new-instance p2, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    array-length v0, v9

    invoke-direct {p2, v9, v0}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object p2, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    iput-object p4, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iput-object p0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object p1

    :cond_e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v7, p1

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v2, :cond_f

    if-eq v2, v5, :cond_f

    invoke-direct {v1, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_f
    iget-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aput-object v1, v10, p1

    if-eqz v8, :cond_10

    aget-object v1, v10, p1

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    aput-short v1, v9, p1

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_11
    iget-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length p4, p4

    if-le p4, v4, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_8

    :cond_12
    move-object p4, p1

    :goto_8
    move v0, v3

    :goto_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v7, v6

    if-lt v0, v7, :cond_17

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    move p3, v3

    :goto_a
    iget-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length p4, p4

    if-ge p3, p4, :cond_16

    if-eqz p3, :cond_13

    const-string p4, " | "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    iget-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object p4, p4, p3

    iget-object v0, p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/16 v0, 0x7b

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_14
    iget-object v0, p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_15

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p4, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->appendEnumString(Ljava/lang/StringBuffer;)V

    :cond_15
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_16
    new-instance p3, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p1, p4, v3

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object p1, p4, v4

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v2

    const-string p1, "cvc-datatype-valid.1.2.3"

    invoke-direct {p3, p1, p4}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_17
    :try_start_0
    aget-object v6, v6, v0

    invoke-direct {v6, p4, p2, p3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v0

    iget-short v7, v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v7, :cond_18

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v0

    iget-short v7, v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eq v7, v5, :cond_18

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v0

    invoke-direct {v7, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_18
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v0

    iput-object v7, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object p0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9
.end method

.method protected static getGDVs()[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    invoke-virtual {v0}, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    return-object v0
.end method

.method private getPrimitiveDV(S)S
    .locals 1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_b

    if-ne p3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    move-object v0, p3

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    if-ne v3, v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object p3

    invoke-interface {p3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object p3

    check-cast p3, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result p1

    return p1

    :cond_8
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    move-object v4, v0

    move-object v0, p3

    move-object p3, v4

    goto :goto_0

    :cond_9
    move-object v0, p3

    goto :goto_0

    :cond_a
    :goto_1
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    move-object v4, v0

    move-object v0, p3

    move-object p3, v4

    goto/16 :goto_0

    :cond_b
    :goto_2
    return v1
.end method

.method private isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 2

    if-eqz p3, :cond_0

    check-cast p3, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    move-object v0, p3

    move-object p3, v1

    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p3

    move-object v1, v0

    move-object v0, p3

    move-object p3, v1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    check-cast p3, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object p3

    move v1, v0

    :goto_0
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-direct {p0, p1, p2, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
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

.method private setBounded()V
    .locals 6

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v0, 0x100

    if-nez v3, :cond_0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_2

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_5

    :cond_2
    :goto_0
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_5

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_5

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_4

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_5

    :cond_5
    :goto_1
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_5

    :cond_6
    const/4 v3, 0x3

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v3, v0

    if-lez v3, :cond_7

    aget-object v3, v0, v1

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v3

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    move v4, v1

    :goto_3
    array-length v5, v0

    if-lt v4, v5, :cond_8

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_5

    :cond_8
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBounded()Z

    move-result v5

    if-eqz v5, :cond_a

    aget-object v5, v0, v4

    iget-short v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v5

    if-eq v3, v5, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    return-void

    :cond_b
    :goto_5
    return-void
.end method

.method private setCardinality()V
    .locals 5

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto/16 :goto_5

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_7

    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_7

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit16 v3, v0, 0x100

    if-nez v3, :cond_2

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_4

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_4
    :goto_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_6

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->specialCardinalityCheck()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_6
    :goto_1
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_7
    :goto_2
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_8
    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_a

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_9

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_a
    :goto_3
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_b
    const/4 v3, 0x3

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move v3, v1

    :goto_4
    array-length v4, v0

    if-lt v3, v4, :cond_c

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_c
    aget-object v4, v0, v3

    invoke-interface {v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinite()Z

    move-result v4

    if-nez v4, :cond_d

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    return-void

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    return-void
.end method

.method private setNumeric()V
    .locals 5

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move v2, v3

    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_1

    :cond_2
    aget-object v4, v0, v2

    invoke-interface {v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getNumeric()Z

    move-result v4

    if-nez v4, :cond_3

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private setOrdered()V
    .locals 7

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto/16 :goto_6

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto/16 :goto_6

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v0

    if-nez v2, :cond_2

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    return-void

    :cond_2
    aget-object v0, v0, v3

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v4, v4, v3

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-nez v4, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    move v5, v4

    move v4, v2

    move v2, v1

    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v6, v6

    if-ge v2, v6, :cond_a

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v4, :cond_7

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v4, v4, v2

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v4

    if-ne v0, v4, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v3

    :cond_7
    :goto_3
    if-eqz v5, :cond_9

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v5, v5, v2

    iget-short v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-nez v5, :cond_8

    move v5, v1

    goto :goto_4

    :cond_8
    move v5, v3

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v0, v0, v3

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_6

    :cond_b
    if-eqz v5, :cond_c

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_6

    :cond_c
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    :cond_d
    :goto_6
    return-void
.end method

.method private specialCardinalityCheck()Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private whiteSpaceValue(S)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    if-nez p4, :cond_0

    sget-object p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    move-object v5, p4

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V

    return-void
.end method

.method applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    iget-boolean v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v7, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    const/4 v8, 0x0

    iput-short v8, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v8, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v9, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getAllowedFacets()S

    move-result v9

    and-int/lit8 v0, v3, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 v0, v9, 0x1

    if-nez v0, :cond_1

    const-string v0, "cos-applicable-facets"

    new-array v12, v10, [Ljava/lang/Object;

    const-string v13, "length"

    aput-object v13, v12, v8

    iget-object v13, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v13, v12, v11

    invoke-virtual {v1, v0, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->length:I

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/2addr v0, v11

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_2

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/2addr v0, v11

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_2
    :goto_0
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_4

    and-int/lit8 v0, v9, 0x2

    if-nez v0, :cond_3

    const-string v0, "cos-applicable-facets"

    new-array v12, v10, [Ljava/lang/Object;

    const-string v13, "minLength"

    aput-object v13, v12, v8

    iget-object v13, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v13, v12, v11

    invoke-virtual {v1, v0, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/2addr v0, v10

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_4

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/2addr v0, v10

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_4
    :goto_1
    and-int/lit8 v0, v3, 0x4

    const/4 v12, 0x4

    if-eqz v0, :cond_6

    and-int/lit8 v0, v9, 0x4

    if-nez v0, :cond_5

    const-string v0, "cos-applicable-facets"

    new-array v13, v10, [Ljava/lang/Object;

    const-string v14, "maxLength"

    aput-object v14, v13, v8

    iget-object v14, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v14, v13, v11

    invoke-virtual {v1, v0, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLength:I

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/2addr v0, v12

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_6

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/2addr v0, v12

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_6
    :goto_2
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_8

    and-int/lit8 v0, v9, 0x8

    if-nez v0, :cond_7

    const-string v0, "cos-applicable-facets"

    new-array v13, v10, [Ljava/lang/Object;

    const-string v14, "pattern"

    aput-object v14, v13, v8

    iget-object v14, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v14, v13, v11

    invoke-virtual {v1, v0, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    iget-object v14, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    const-string v15, "X"

    invoke-interface/range {p5 .. p5}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getLocale()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v0, v14, v15, v13}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v13, "InvalidRegex"

    new-array v14, v10, [Ljava/lang/Object;

    iget-object v15, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    aput-object v15, v14, v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v11

    invoke-virtual {v1, v13, v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    iput-object v13, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v13, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v13, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v13, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_8

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_8
    :goto_4
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_a

    and-int/lit8 v0, v9, 0x10

    if-nez v0, :cond_9

    const-string v0, "cos-applicable-facets"

    new-array v13, v10, [Ljava/lang/Object;

    const-string v14, "whiteSpace"

    aput-object v14, v13, v8

    iget-object v14, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v14, v13, v11

    invoke-virtual {v1, v0, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    iget-short v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_a

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_a
    :goto_5
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_e

    and-int/lit16 v0, v9, 0x800

    if-nez v0, :cond_b

    const-string v0, "cos-applicable-facets"

    new-array v13, v10, [Ljava/lang/Object;

    const-string v14, "enumeration"

    aput-object v14, v13, v8

    iget-object v14, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v14, v13, v11

    invoke-virtual {v1, v0, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_b
    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v14, v13, [Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v14, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v14, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;

    invoke-direct {v15, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;-><init>(Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    iget-object v12, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v12, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput v8, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    move v12, v8

    :goto_6
    if-lt v12, v13, :cond_c

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v0, v0, 0x800

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_e

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x800

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto :goto_8

    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual {v14, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v15, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->setNSContext(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    :cond_d
    :try_start_1
    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v1, v11, v15, v8}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualEnumValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v8

    iget-object v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v17, v13

    add-int/lit8 v13, v10, 0x1

    :try_start_2
    iput v13, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    aput-object v8, v11, v10
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_1
    move/from16 v17, v13

    :catch_2
    const-string v8, "enumeration-valid-restriction"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v11, v13

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v10

    invoke-interface {v10}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v11, v13

    invoke-virtual {v1, v8, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v17

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_6

    :cond_e
    :goto_8
    and-int/lit8 v0, v3, 0x20

    const/4 v8, 0x3

    if-eqz v0, :cond_12

    and-int/lit8 v0, v9, 0x20

    if-nez v0, :cond_f

    const-string v0, "cos-applicable-facets"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const-string v10, "maxInclusive"

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_f
    const/4 v12, 0x1

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_3
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    invoke-direct {v0, v10, v6, v7, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_10

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "FacetValueFromBase"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const-string v10, "maxInclusive"

    const/4 v12, 0x2

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v8

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_9
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v10, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_11

    iget-short v10, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_11

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v10, v10, v11

    iget-object v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v10, v11, v0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "FixedFacetValue"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    const-string v10, "maxInclusive"

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v10, v10, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    const/4 v12, 0x2

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v10, v11, v8

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :try_start_4
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "FacetValueFromBase"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const-string v10, "maxInclusive"

    const/4 v12, 0x2

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v8

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    :goto_a
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_18

    and-int/lit8 v0, v9, 0x40

    if-nez v0, :cond_13

    const-string v0, "cos-applicable-facets"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const-string v10, "maxExclusive"

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_13
    const/4 v12, 0x1

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_5
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    invoke-direct {v0, v10, v6, v7, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_14

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "FacetValueFromBase"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const-string v10, "maxExclusive"

    const/4 v12, 0x2

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v8

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    :goto_b
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v10, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_16

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v10, v10, v11

    iget-object v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v10, v11, v0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v10, v10, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_15

    if-eqz v0, :cond_15

    const-string v10, "FixedFacetValue"

    const/4 v11, 0x4

    new-array v12, v11, [Ljava/lang/Object;

    const-string v11, "maxExclusive"

    const/4 v13, 0x0

    aput-object v11, v12, v13

    iget-object v11, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v11, v12, v13

    iget-object v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v11, v11, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    const/4 v13, 0x2

    aput-object v11, v12, v13

    iget-object v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v11, v12, v8

    invoke-virtual {v1, v10, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_c

    :cond_16
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "FacetValueFromBase"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const-string v10, "maxExclusive"

    const/4 v12, 0x2

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v8

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_17
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v10, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_18

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v10, v10, v11

    iget-object v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v10, v11, v0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_18

    const-string v0, "maxExclusive-valid-restriction.2"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v10, v10, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    :goto_d
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_1e

    and-int/lit16 v0, v9, 0x80

    if-nez v0, :cond_19

    const-string v0, "cos-applicable-facets"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const-string v10, "minExclusive"

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_19
    const/4 v12, 0x1

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_7
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    invoke-direct {v0, v10, v6, v7, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_1a

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_7
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "FacetValueFromBase"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const-string v10, "minExclusive"

    const/4 v12, 0x2

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v8

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    :goto_e
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v10, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_1c

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v10, v10, v11

    iget-object v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v10, v11, v0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v10, v10, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_1b

    if-eqz v0, :cond_1b

    const-string v10, "FixedFacetValue"

    const/4 v11, 0x4

    new-array v12, v11, [Ljava/lang/Object;

    const-string v11, "minExclusive"

    const/4 v13, 0x0

    aput-object v11, v12, v13

    iget-object v11, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v11, v12, v13

    iget-object v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v11, v11, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    const/4 v13, 0x2

    aput-object v11, v12, v13

    iget-object v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v11, v12, v8

    invoke-virtual {v1, v10, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_f

    :cond_1c
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_1d

    :try_start_8
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_8
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "FacetValueFromBase"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const-string v10, "minExclusive"

    const/4 v12, 0x2

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v8

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_1d
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v10, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_1e

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v10, v10, v11

    iget-object v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v10, v11, v0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1e

    const-string v0, "minExclusive-valid-restriction.3"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v10, v10, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    :goto_10
    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_22

    and-int/lit16 v0, v9, 0x100

    if-nez v0, :cond_1f

    const-string v0, "cos-applicable-facets"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "minInclusive"

    const/4 v10, 0x0

    aput-object v6, v7, v10

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v6, v7, v10

    invoke-virtual {v1, v0, v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_1f
    const/4 v10, 0x1

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_9
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v11, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    invoke-direct {v0, v11, v6, v7, v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v4, 0x100

    if-eqz v0, :cond_20

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_9
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_11

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "FacetValueFromBase"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const-string v10, "minInclusive"

    const/4 v12, 0x2

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v8

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    :goto_11
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v10, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_21

    iget-short v10, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_21

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v10, v10, v11

    iget-object v11, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v10, v11, v0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "FixedFacetValue"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    const-string v10, "minInclusive"

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v10, v10, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    const/4 v12, 0x2

    aput-object v10, v11, v12

    iget-object v10, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v10, v11, v8

    invoke-virtual {v1, v0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    :try_start_a
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_a
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "FacetValueFromBase"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v7, v10

    iget-object v6, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v6, v7, v10

    const-string v6, "minInclusive"

    const/4 v10, 0x2

    aput-object v6, v7, v10

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    invoke-virtual {v1, v0, v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    :goto_12
    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_24

    and-int/lit16 v0, v9, 0x200

    if-nez v0, :cond_23

    const-string v0, "cos-applicable-facets"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "totalDigits"

    const/4 v10, 0x0

    aput-object v6, v7, v10

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v6, v7, v10

    invoke-virtual {v1, v0, v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_23
    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigits:I

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v4, 0x200

    if-eqz v0, :cond_24

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_24
    :goto_13
    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_26

    and-int/lit16 v0, v9, 0x400

    if-nez v0, :cond_25

    const-string v0, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "fractionDigits"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_25
    iget v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigits:I

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v4, 0x400

    if-eqz v0, :cond_26

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_26
    :goto_14
    if-eqz v5, :cond_27

    iput-short v5, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    :cond_27
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_55

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_28

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_28

    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v0, v2, :cond_28

    const-string v2, "minLength-less-than-equal-to-maxLength"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_29

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_29

    const-string v0, "maxInclusive-maxExclusive"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_2a

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    const-string v0, "minInclusive-minExclusive"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x20

    const/4 v3, -0x1

    if-eqz v2, :cond_2b

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v3, :cond_2b

    if-eqz v0, :cond_2b

    const-string v0, "minInclusive-less-than-equal-to-maxInclusive"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_2c

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v3, :cond_2c

    if-eqz v0, :cond_2c

    const-string v0, "minExclusive-less-than-equal-to-maxExclusive"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2d

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v3, :cond_2d

    const-string v0, "minExclusive-less-than-maxInclusive"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_2e

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v3, :cond_2e

    const-string v0, "minInclusive-less-than-maxExclusive"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_31

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_30

    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v0, v2, :cond_2f

    const-string v2, "fractionDigits-totalDigits"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_2f
    const/4 v4, 0x1

    const/4 v5, 0x2

    goto :goto_15

    :cond_30
    const/4 v4, 0x1

    const/4 v5, 0x2

    goto :goto_15

    :cond_31
    const/4 v4, 0x1

    const/4 v5, 0x2

    :goto_15
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v0, v4

    if-eqz v0, :cond_37

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v2, v5

    if-eqz v2, :cond_32

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v2, v0, :cond_32

    const-string v0, "length-minLength-maxLength.1.1"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_34

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v2, v0, :cond_33

    const-string v0, "length-minLength-maxLength.2.1"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v3, v5

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_33
    const/4 v4, 0x1

    goto :goto_16

    :cond_34
    const/4 v4, 0x1

    :goto_16
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v2, v4

    if-eqz v2, :cond_36

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-eq v2, v0, :cond_35

    const-string v0, "length-valid-restriction"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v3, v5

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_35
    const/4 v4, 0x1

    goto :goto_17

    :cond_36
    const/4 v4, 0x1

    goto :goto_17

    :cond_37
    const/4 v4, 0x1

    :goto_17
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v0, v4

    if-nez v0, :cond_39

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v0, v4

    if-eqz v0, :cond_38

    goto :goto_18

    :cond_38
    const/4 v4, 0x2

    goto/16 :goto_1c

    :cond_39
    :goto_18
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v0, v2, :cond_3a

    const-string v2, "length-minLength-maxLength.1.1"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    :cond_3a
    const/4 v4, 0x2

    :goto_19
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v0, v4

    if-nez v0, :cond_3b

    const-string v0, "length-minLength-maxLength.1.2.a"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_3b
    const/4 v4, 0x0

    :goto_1a
    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v0, v2, :cond_3c

    const-string v2, "length-minLength-maxLength.1.2.b"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v5, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_40

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v0, v2, :cond_3d

    const-string v2, "length-minLength-maxLength.2.1"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3d
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-nez v0, :cond_3e

    const-string v0, "length-minLength-maxLength.2.2.a"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b

    :cond_3e
    const/4 v4, 0x0

    :goto_1b
    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v0, v2, :cond_3f

    const-string v2, "length-minLength-maxLength.2.2.b"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v5, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_3f
    const/4 v4, 0x2

    goto :goto_1c

    :cond_40
    const/4 v4, 0x2

    :goto_1c
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v0, v4

    if-eqz v0, :cond_45

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_42

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v2, v0, :cond_41

    const-string v0, "minLength-less-than-equal-to-maxLength"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_41
    const/4 v4, 0x2

    goto :goto_1d

    :cond_42
    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_46

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v2, v4

    if-eqz v2, :cond_43

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v2, v0, :cond_43

    const-string v0, "FixedFacetValue"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "minLength"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v4, v3

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v2, v4, v8

    invoke-virtual {v1, v0, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_43
    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v0, v2, :cond_44

    const-string v2, "minLength-valid-restriction"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_44
    const/4 v4, 0x2

    goto :goto_1d

    :cond_45
    const/4 v4, 0x2

    :cond_46
    :goto_1d
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_47

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v2, v4

    if-eqz v2, :cond_47

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v2, v0, :cond_47

    const-string v2, "minLength-less-than-equal-to-maxLength"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_47
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_49

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v3, v2

    if-eqz v3, :cond_49

    iget-short v3, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v3, v2

    if-eqz v3, :cond_48

    iget v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v3, v0, :cond_48

    const-string v0, "FixedFacetValue"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v2, "maxLength"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v4, v3

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v2, v4, v8

    invoke-virtual {v1, v0, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_48
    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v0, v2, :cond_49

    const-string v2, "maxLength-valid-restriction"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4b

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_4b

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_4a

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-eq v2, v0, :cond_4a

    const-string v0, "FixedFacetValue"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "totalDigits"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v4, v3

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v2, v4, v8

    invoke-virtual {v1, v0, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4a
    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v0, v2, :cond_4b

    const-string v2, "totalDigits-valid-restriction"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4b
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_4c

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_4c

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v2, v0, :cond_4c

    const-string v0, "fractionDigits-totalDigits"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_51

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_50

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_4d

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-ne v2, v0, :cond_4e

    :cond_4d
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x18

    if-ne v0, v2, :cond_4f

    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eqz v0, :cond_4f

    :cond_4e
    const-string v0, "FixedFacetValue"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "fractionDigits"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v2, v3, v8

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-le v0, v2, :cond_51

    const-string v2, "fractionDigits-valid-restriction"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    :cond_50
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x18

    if-ne v0, v2, :cond_51

    iget v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eqz v0, :cond_51

    const-string v2, "FixedFacetValue"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "fractionDigits"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const-string v0, "0"

    const/4 v3, 0x2

    aput-object v0, v4, v3

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v0, v4, v8

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_51
    :goto_1e
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_55

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_55

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_52

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-eq v2, v0, :cond_52

    const-string v0, "FixedFacetValue"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "whiteSpace"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v4, v3

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v2, v4, v8

    invoke-virtual {v1, v0, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    :cond_52
    const/4 v3, 0x2

    :goto_1f
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-nez v0, :cond_53

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-ne v0, v3, :cond_53

    const-string v0, "whiteSpace-valid-restriction.1"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "preserve"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    :cond_53
    const/4 v4, 0x1

    :goto_20
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-ne v0, v4, :cond_54

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_54

    const-string v0, "whiteSpace-valid-restriction.1"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const-string v2, "replace"

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_54
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-nez v0, :cond_55

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-ne v0, v4, :cond_55

    const-string v0, "whiteSpace-valid-restriction.2"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_55
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_56

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_56

    or-int/2addr v0, v4

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget v0, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_56
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_57

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_57

    or-int/2addr v0, v4

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget v0, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_57
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_58

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_58

    or-int/2addr v0, v4

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget v0, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_58
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5d

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_59

    or-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    iput-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_23

    :cond_59
    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_21
    if-gez v0, :cond_5c

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_5d

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v3, :cond_5b

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_22
    if-gez v0, :cond_5a

    goto :goto_23

    :cond_5a
    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_5b
    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_23

    :cond_5c
    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :cond_5d
    :goto_23
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_5e

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5e

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-short v0, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_5e
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v0, 0x800

    if-nez v2, :cond_5f

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_5f

    or-int/lit16 v0, v0, 0x800

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget v0, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :cond_5f
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_60

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_60

    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_60

    or-int/lit8 v2, v2, 0x40

    int-to-short v2, v2

    iput-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_60
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_61

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_61

    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_61

    or-int/lit8 v2, v2, 0x20

    int-to-short v2, v2

    iput-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_61
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_62

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_62

    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_62

    or-int/lit16 v2, v2, 0x80

    int-to-short v2, v2

    iput-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_62
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_63

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_63

    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_63

    or-int/lit16 v2, v2, 0x100

    int-to-short v2, v2

    iput-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_63
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_64

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v2, 0x200

    if-nez v3, :cond_64

    or-int/lit16 v2, v2, 0x200

    int-to-short v2, v2

    iput-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_64
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_65

    iget-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v2, 0x400

    if-nez v3, :cond_65

    or-int/lit16 v2, v2, 0x400

    int-to-short v2, v2

    iput-short v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget v2, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_65
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v0, :cond_66

    iget-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v0, :cond_66

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    :cond_66
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-object v2, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    return-void
.end method

.method applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    return-void

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "internal error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V
    .locals 6

    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    return-void

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "internal error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 3

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    :cond_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "anyType"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne v0, v2, :cond_6

    :cond_4
    sget-object p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eq v0, p1, :cond_5

    return v1

    :cond_5
    return p3

    :cond_6
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    goto :goto_0
.end method

.method public derivedFromType(Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    :goto_0
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    if-nez v0, :cond_5

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    move-object v0, p0

    :goto_1
    if-eq v0, p1, :cond_3

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_2
    if-ne v0, p1, :cond_4

    return v1

    :cond_4
    return p2

    :cond_5
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0
.end method

.method protected getActualEnumValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validateWithInfo(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object p1

    return-object p1
.end method

.method public getActualEnumeration()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    return-object v0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0
.end method

.method public getAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    return-object v0
.end method

.method public getBounded()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    return v0
.end method

.method public getBuiltInKind()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return v0
.end method

.method public getDefinedFacets()S
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_3

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v1, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    return v0

    :cond_1
    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    return v0

    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEnumerationItemTypeList()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    return-object v0
.end method

.method public getEnumerationTypeList()Lmf/org/apache/xerces/xs/ShortList;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    if-lt v1, v2, :cond_1

    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v2, v2, v1

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    return-object v0
.end method

.method public getFacet(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x800

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/XSFacet;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSFacet;->getFacetKind()S

    move-result v3

    if-ne v3, p1, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_4

    :goto_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/XSMultiValueFacet;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSMultiValueFacet;->getFacetKind()S

    move-result v3

    if-ne v3, p1, :cond_5

    return-object v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 15

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_17

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/16 v1, 0x18

    if-nez v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v0, v1, :cond_17

    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v2, :cond_2

    const/16 v5, 0x1d

    if-eq v2, v5, :cond_2

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v7, 0x10

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object v8, v5, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1

    move v11, v4

    goto :goto_0

    :cond_1
    move v11, v3

    :goto_0
    iget-object v12, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v2, v0, v3

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    const/4 v11, 0x0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v5, v4

    if-eqz v5, :cond_3

    move v12, v4

    goto :goto_2

    :cond_3
    move v12, v3

    :goto_2
    iget-object v13, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v14, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_4
    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v5, v6, :cond_6

    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    const/4 v11, 0x0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    move v12, v4

    goto :goto_3

    :cond_5
    move v12, v3

    :goto_3
    iget-object v13, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v14, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_6
    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v5, v6, :cond_8

    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/4 v8, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    const/4 v11, 0x0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_7

    move v12, v4

    goto :goto_4

    :cond_7
    move v12, v3

    :goto_4
    iget-object v13, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v14, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_8
    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-eq v5, v6, :cond_a

    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v8, 0x200

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    const/4 v11, 0x0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_9

    move v12, v4

    goto :goto_5

    :cond_9
    move v12, v3

    :goto_5
    iget-object v13, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v14, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_a
    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v5, v1, :cond_b

    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v8, 0x400

    const-string v9, "0"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v13, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eq v1, v6, :cond_d

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v8, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v11, 0x0

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_c

    move v12, v4

    goto :goto_6

    :cond_c
    move v12, v3

    :goto_6
    iget-object v13, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_d
    :goto_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_f

    new-instance v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v6, 0x20

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_e

    move v10, v4

    goto :goto_8

    :cond_e
    move v10, v3

    :goto_8
    iget-object v11, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v12, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_11

    new-instance v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v6, 0x40

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_10

    move v10, v4

    goto :goto_9

    :cond_10
    move v10, v3

    :goto_9
    iget-object v11, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v12, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_13

    new-instance v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v6, 0x80

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_12

    move v10, v4

    goto :goto_a

    :cond_12
    move v10, v3

    :goto_a
    iget-object v11, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v12, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_13
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_15

    new-instance v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v6, 0x100

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_14

    move v10, v4

    goto :goto_b

    :cond_14
    move v10, v3

    :goto_b
    iget-object v11, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v12, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_15
    if-lez v2, :cond_16

    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto :goto_c

    :cond_16
    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_c
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_17
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_18

    goto :goto_d

    :cond_18
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_d
    return-object v0
.end method

.method public getFinal()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    return v0
.end method

.method public getFinite()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    return v0
.end method

.method public getFixedFacets()S
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    return v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    return v0
.end method

.method public getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    invoke-direct {v2, v1, v0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    return-object v0
.end method

.method public getLexicalFacetValue(S)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_12

    const/16 v0, 0x10

    if-eq p1, v0, :cond_f

    const/16 v0, 0x20

    if-eq p1, v0, :cond_d

    const/16 v0, 0x40

    if-eq p1, v0, :cond_b

    const/16 v0, 0x80

    if-eq p1, v0, :cond_9

    const/16 v0, 0x100

    if-eq p1, v0, :cond_7

    const/16 v0, 0x200

    if-eq p1, v0, :cond_5

    const/16 v0, 0x400

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    return-object v2

    :pswitch_0
    iget p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :pswitch_1
    iget p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_2
    iget-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    const-string p1, "0"

    return-object p1

    :cond_3
    iget p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_5
    iget p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2

    :cond_7
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    return-object v2

    :cond_9
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    return-object v2

    :cond_b
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    return-object v2

    :cond_d
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7
    return-object v2

    :cond_f
    iget-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz p1, :cond_11

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_10

    goto :goto_8

    :cond_10
    sget-object p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object p1, p1, v0

    return-object p1

    :cond_11
    :goto_8
    return-object v2

    :cond_12
    iget p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-ne p1, v1, :cond_13

    goto :goto_9

    :cond_13
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;
    .locals 5

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/16 v1, 0x18

    if-nez v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    if-nez v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "\\c+"

    aput-object v3, v1, v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "\\i\\c*"

    aput-object v3, v1, v0

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "\\i\\c*"

    aput-object v3, v1, v0

    add-int/lit8 v3, v0, 0x1

    const-string v4, "[\\i-[:]][\\c-[:]]*"

    aput-object v4, v1, v3

    goto :goto_1

    :cond_4
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v3, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "[\\-+]?[0-9]+"

    aput-object v3, v1, v0

    goto :goto_1

    :cond_5
    new-array v1, v0, [Ljava/lang/String;

    :goto_1
    if-lt v2, v0, :cond_6

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    return-object v0
.end method

.method public getMaxExclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxInclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0
.end method

.method public getMinExclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMinInclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_4

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v0, 0x800

    const/16 v2, 0x18

    const/16 v3, 0x8

    if-nez v1, :cond_0

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v0, v2, :cond_4

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    const/4 v1, 0x0

    iget-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v4, v3

    if-nez v4, :cond_1

    iget-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v4, :cond_1

    iget-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v4, v2, :cond_2

    :cond_1
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLmf/org/apache/xerces/xs/StringList;Lmf/org/apache/xerces/xs/datatypes/ObjectList;Lmf/org/apache/xerces/xs/XSObjectList;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v2, :cond_3

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    new-instance v4, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/16 v6, 0x800

    invoke-direct {v2, v6, v3, v4, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLmf/org/apache/xerces/xs/StringList;Lmf/org/apache/xerces/xs/datatypes/ObjectList;Lmf/org/apache/xerces/xs/XSObjectList;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    :cond_3
    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v2, v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getNumeric()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    return v0
.end method

.method public getOrdered()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    return v0
.end method

.method public getPrimitiveKind()S
    .locals 3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_3

    const/16 v2, 0x15

    if-eq v0, v2, :cond_2

    const/16 v2, 0x16

    if-eq v0, v2, :cond_2

    const/16 v2, 0x17

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimitiveType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_1

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()S
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getTypeCategory()S
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariety()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    :goto_0
    return v0
.end method

.method public getWhitespace()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DatatypeException;
        }
    .end annotation

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    return v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/DatatypeException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "dt-whitespace"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/dv/DatatypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "anyType"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_1

    if-nez p3, :cond_2

    :cond_1
    return v2

    :cond_2
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_4

    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v2

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    return v0

    :cond_6
    if-nez p3, :cond_7

    if-nez v1, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method public isDefinedFacet(S)Z
    .locals 5

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v2, p1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/16 v4, 0x8

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    const/16 v2, 0x18

    if-ne v0, v2, :cond_5

    if-eq p1, v4, :cond_4

    const/16 v0, 0x400

    if-eq p1, v0, :cond_4

    return v1

    :cond_4
    return v3

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v1
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFinal(S)Z
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFixedFacet(S)Z
    .locals 4

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    const/16 v0, 0x400

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    return v3
.end method

.method public isIDType()Z
    .locals 5

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v4, v3

    if-lt v0, v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v0

    return v0

    :pswitch_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v3, 0x15

    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    return v2

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected normalize(Ljava/lang/Object;S)Ljava/lang/String;
    .locals 12

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-short v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/String;S)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_4

    const-string p1, ""

    return-object p1

    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 v2, 0xd

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/16 v5, 0x20

    const/4 v6, 0x0

    if-ne p2, v1, :cond_9

    :goto_0
    if-lt v6, v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_7

    if-ne p2, v2, :cond_8

    :cond_7
    invoke-virtual {p1, v6, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_9
    move v8, v1

    move p2, v6

    move v7, p2

    :goto_1
    if-lt p2, v0, :cond_a

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    if-eq v9, v4, :cond_b

    if-eq v9, v3, :cond_b

    if-eq v9, v2, :cond_b

    if-eq v9, v5, :cond_b

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v7, v8

    move v8, v6

    goto :goto_5

    :cond_b
    :goto_3
    add-int/lit8 v9, v0, -0x1

    if-lt p2, v9, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v10, p2, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    if-eq v11, v4, :cond_e

    if-eq v11, v3, :cond_e

    if-eq v11, v2, :cond_e

    if-eq v11, v5, :cond_e

    :goto_4
    if-ge p2, v9, :cond_d

    if-nez v8, :cond_d

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v7, v9

    :cond_d
    :goto_5
    add-int/2addr p2, v1

    goto :goto_1

    :cond_e
    move p2, v10

    goto :goto_3
.end method

.method reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public reset()V
    .locals 3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v1, 0x0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v2, -0x1

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-void
.end method

.method public setAnonymous(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    return-void
.end method

.method protected setDVs([Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    return-void
.end method

.method protected setListValues(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 p1, 0x2

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p2, 0x19

    iput-short p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 p2, 0x10

    iput-short p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    const/16 p1, 0x2c

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-object p0
.end method

.method public setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method protected setRestrictionValues(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iget-short p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iget-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    :pswitch_1
    iget-object p2, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    :goto_0
    :pswitch_2
    iget-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iget-short p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-short p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iget-short p3, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-short p2, p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iget-short p1, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setUnionValues(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 p1, 0x3

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p1, 0x1a

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 p1, 0x10

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 p1, 0x2

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    const/16 p1, 0x2d

    iput-short p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object p1
.end method

.method public validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object p1
.end method

.method public validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needExtraChecking()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_2
    return-void
.end method

.method public validateWithInfo(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object p3
.end method
