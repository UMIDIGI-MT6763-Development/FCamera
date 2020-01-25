.class public Lmf/org/apache/xerces/util/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/SymbolTable$Entry;
    }
.end annotation


# static fields
.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

.field protected transient fCount:I

.field protected fLoadFactor:F

.field protected fTableSize:I

.field protected fThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x65

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fLoadFactor:F

    iput p1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    iget p1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    new-array v0, p1, [Lmf/org/apache/xerces/util/SymbolTable$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fThreshold:I

    const/4 p1, 0x0

    iput p1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal Load: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal Capacity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v1, v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    iget v2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fThreshold:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/SymbolTable;->rehash()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;

    iget-object v2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v2, v2, v0

    invoke-direct {v1, p1, v2}, Lmf/org/apache/xerces/util/SymbolTable$Entry;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable$Entry;)V

    iget-object p1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aput-object v1, p1, v0

    iget p1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    iget-object p1, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object v2, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object v1, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v1, v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    iget v2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fThreshold:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/SymbolTable;->rehash()V

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;

    iget-object v2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v2, v2, v0

    invoke-direct {v1, p1, p2, p3, v2}, Lmf/org/apache/xerces/util/SymbolTable$Entry;-><init>([CIILmf/org/apache/xerces/util/SymbolTable$Entry;)V

    iget-object p1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aput-object v1, p1, v0

    iget p1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    iget-object p1, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object v2, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v2, v2

    if-ne p3, v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-lt v2, p3, :cond_2

    iget-object p1, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    return-object p1

    :cond_2
    add-int v3, p2, v2

    aget-char v3, p1, v3

    iget-object v4, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    aget-char v4, v4, v2

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v0, v2, v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v3, v0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v3, v3

    if-ne v1, v3, :cond_3

    :goto_1
    if-lt v2, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, v0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    aget-char v4, v4, v2

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0
.end method

.method public containsSymbol([CII)Z
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v0, v1, v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v2, v2

    if-ne p3, v2, :cond_3

    :goto_1
    if-lt v1, p3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int v2, p2, v1

    aget-char v2, p1, v2

    iget-object v3, v0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    aget-char v3, v3, v1

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0
.end method

.method public hash(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    return p1
.end method

.method public hash([CII)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v0, p3, :cond_0

    const p1, 0x7fffffff

    and-int/2addr p1, v1

    return p1

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    add-int v2, p2, v0

    aget-char v2, p1, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected rehash()V
    .locals 9

    iget-object v0, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Lmf/org/apache/xerces/util/SymbolTable$Entry;

    int-to-float v4, v2

    iget v5, p0, Lmf/org/apache/xerces/util/SymbolTable;->fLoadFactor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmf/org/apache/xerces/util/SymbolTable;->fThreshold:I

    iput-object v3, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    iget-object v4, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    array-length v4, v4

    iput v4, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    aget-object v1, v0, v4

    :goto_1
    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    iget-object v6, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    const/4 v7, 0x0

    iget-object v8, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v8, v8

    invoke-virtual {p0, v6, v7, v8}, Lmf/org/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v6

    rem-int/2addr v6, v2

    aget-object v7, v3, v6

    iput-object v7, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aput-object v1, v3, v6

    move-object v1, v5

    goto :goto_1
.end method
