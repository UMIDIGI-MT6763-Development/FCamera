.class final Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;
.super Ljava/lang/Object;
.source "CaseInsensitiveMap.java"


# static fields
.field private static CHUNK_MASK:I = 0x0

.field private static CHUNK_SHIFT:I = 0xa

.field private static CHUNK_SIZE:I

.field private static INITIAL_CHUNK_COUNT:I

.field private static LOWER_CASE_MATCH:I

.field private static UPPER_CASE_MATCH:I

.field private static caseInsensitiveMap:[[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    sub-int/2addr v0, v1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    const/16 v0, 0x40

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->INITIAL_CHUNK_COUNT:I

    sput v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    const/4 v0, 0x2

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->buildCaseInsensitiveMap()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCaseInsensitiveMap()V
    .locals 8

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->INITIAL_CHUNK_COUNT:I

    sget v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, [I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-ne v3, v2, :cond_1

    if-eq v3, v1, :cond_6

    :cond_1
    const/4 v4, 0x2

    new-array v5, v4, [I

    if-eq v3, v1, :cond_3

    aput v3, v5, v0

    sget v6, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    const/4 v7, 0x1

    aput v6, v5, v7

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v6

    if-eqz v6, :cond_2

    sget v7, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    invoke-static {v1, v5, v3, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->updateMap(I[II[II)[I

    move-result-object v5

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    if-eq v2, v1, :cond_5

    array-length v6, v5

    if-ne v3, v6, :cond_4

    invoke-static {v5, v4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandMap([II)[I

    move-result-object v5

    :cond_4
    add-int/lit8 v4, v3, 0x1

    aput v2, v5, v3

    sget v3, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    aput v3, v5, v4

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v3

    if-eqz v3, :cond_5

    sget v4, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    invoke-static {v1, v5, v2, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->updateMap(I[II[II)[I

    move-result-object v5

    :cond_5
    invoke-static {v1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static contains([II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    aget v2, p0, v1

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private static contains([III)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    aget v2, p0, v1

    if-ne v2, p1, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget v2, p0, v2

    if-ne v2, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private static expandAndAdd([III)[I
    .locals 3

    array-length v0, p0

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    return-object v1
.end method

.method private static expandMap([II)[I
    .locals 2

    array-length v0, p0

    add-int/2addr p1, v0

    new-array p1, p1, [I

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static get(I)[I
    .locals 1

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getMapping(I)[I
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    ushr-int v0, p0, v0

    sget v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    and-int/2addr p0, v1

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    aget-object v0, v1, v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static set(I[I)V
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    ushr-int v0, p0, v0

    sget v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    and-int/2addr p0, v1

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    aget-object v0, v1, v0

    aput-object p1, v0, p0

    return-void
.end method

.method private static updateMap(I[II[II)[I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-lt v0, v1, :cond_1

    invoke-static {p3, p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3, p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object p0

    invoke-static {p2, p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    :cond_0
    return-object p1

    :cond_1
    aget v1, p3, v0

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2, p2, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([III)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2, p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2, p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    :cond_2
    invoke-static {p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1, v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object p1

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
