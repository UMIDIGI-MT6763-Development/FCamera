.class public Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "AnyURIDV.java"


# static fields
.field private static final BASE_URI:Lmf/org/apache/xerces/util/URI;

.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    const-string v1, "abc://def.ghi.jkl"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->BASE_URI:Lmf/org/apache/xerces/util/URI;

    const/16 v0, 0x80

    new-array v1, v0, [Z

    sput-object v1, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    new-array v1, v0, [C

    sput-object v1, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    new-array v0, v0, [C

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    const/16 v2, 0x7f

    aput-boolean v3, v1, v2

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    const/16 v4, 0x37

    aput-char v4, v1, v2

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    const/16 v4, 0x46

    aput-char v4, v1, v2

    const/16 v1, 0xb

    new-array v2, v1, [C

    fill-array-data v2, :array_1

    array-length v4, v2

    :goto_2
    if-lt v0, v4, :cond_0

    return-void

    :cond_0
    aget-char v1, v2, v0

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aput-boolean v3, v5, v1

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v7, v1, 0x4

    aget-char v7, v6, v7

    aput-char v7, v5, v1

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    and-int/lit8 v7, v1, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aput-boolean v3, v2, v1

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v4, v3, v4

    aput-char v4, v2, v1

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x60s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x25

    if-lt v3, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-lt v5, v6, :cond_6

    :goto_1
    if-ge v3, v0, :cond_4

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v3, v0

    :goto_2
    if-lt v2, v3, :cond_1

    move v0, v3

    goto :goto_4

    :cond_1
    aget-byte v5, v0, v2

    if-gez v5, :cond_2

    add-int/lit16 v5, v5, 0x100

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v7, v5, 0x4

    aget-char v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v6, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    aget-char v6, v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    aget-char v5, v6, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    return-object p0

    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eq v2, v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p0

    :cond_6
    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_7
    int-to-char v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lmf/org/apache/xerces/util/URI;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->BASE_URI:Lmf/org/apache/xerces/util/URI;

    invoke-direct {v0, v1, p2}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    new-instance p2, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v1, "anyURI"

    aput-object v1, v0, p1

    const-string p1, "cvc-datatype-valid.1.2.1"

    invoke-direct {p2, p1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public getAllowedFacets()S
    .locals 1

    const/16 v0, 0x81f

    return v0
.end method
