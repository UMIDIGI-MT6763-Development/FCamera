.class final Lmf/org/apache/xerces/impl/xs/FilePathToURI;
.super Ljava/lang/Object;
.source "FilePathToURI.java"


# static fields
.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x80

    new-array v1, v0, [Z

    sput-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    new-array v1, v0, [C

    sput-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    new-array v0, v0, [C

    sput-object v0, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    const/16 v2, 0x7f

    aput-boolean v3, v1, v2

    sget-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    const/16 v4, 0x37

    aput-char v4, v1, v2

    sget-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    const/16 v4, 0x46

    aput-char v4, v1, v2

    const/16 v1, 0xf

    new-array v2, v1, [C

    fill-array-data v2, :array_1

    array-length v4, v2

    :goto_1
    if-lt v0, v4, :cond_0

    return-void

    :cond_0
    aget-char v1, v2, v0

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v3, v5, v1

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    sget-object v6, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v7, v1, 0x4

    aget-char v7, v6, v7

    aput-char v7, v5, v1

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    and-int/lit8 v7, v1, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v3, v2, v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    sget-object v3, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v4, v3, v4

    aput-char v4, v2, v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    nop

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
        0x23s
        0x25s
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x5bs
        0x5ds
        0x60s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filepath2URI(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, v0, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v5, 0x41

    if-lt v3, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    move v1, v4

    :goto_0
    const/16 v3, 0x25

    if-lt v1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-lt v5, v6, :cond_7

    :goto_1
    if-ge v1, v0, :cond_6

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, v0

    :goto_2
    if-lt v4, v1, :cond_3

    goto :goto_4

    :cond_3
    aget-byte p0, v0, v4

    if-gez p0, :cond_4

    add-int/lit16 p0, p0, 0x100

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v6, p0, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v5, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v5, v5, p0

    if-eqz v5, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    aget-char v5, v5, p0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    aget-char p0, v5, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    int-to-char p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    return-object p0

    :cond_6
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v6, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    aget-char v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    aget-char v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_8
    int-to-char v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
