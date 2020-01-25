.class public Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;
.super Lmf/org/apache/xerces/util/SymbolTable;
.source "SoftReferenceSymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;,
        Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;
    }
.end annotation


# instance fields
.field protected fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

.field private final fReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x65

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

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
    iput p2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fLoadFactor:F

    iput p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    iget p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    new-array p1, p1, [Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    const/4 p1, 0x0

    iput p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

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

.method private clean()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->removeEntry(Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0
.end method

.method private removeEntry(Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;)V
    .locals 2

    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v1, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v1, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object p1, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object p1, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget v1, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    iget-object p1, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object p1, v0, v1

    :goto_0
    iget p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->clean()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v1, v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    iget v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->rehash()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2, v0, v3}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v1, v2, v0

    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    return-object p1

    :cond_1
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    return-object p1

    :cond_3
    :goto_1
    iget-object v1, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 11

    invoke-direct {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->clean()V

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v1, v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    iget v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->rehash()V

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v6, v1, v0

    iget-object v8, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v1, v10

    move-object v2, v9

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v7, v0

    invoke-direct/range {v1 .. v8}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;-><init>(Ljava/lang/String;[CIILmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V

    iget-object p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v10, p1, v0

    iget p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    return-object v9

    :cond_1
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v3, v3

    if-ne p3, v3, :cond_5

    const/4 v3, 0x0

    :goto_1
    if-lt v3, p3, :cond_3

    iget-object p1, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    return-object p1

    :cond_3
    add-int v4, p2, v3

    aget-char v4, p1, v4

    iget-object v5, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v1, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v0, v2, v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v4, v4

    if-ne v1, v4, :cond_4

    :goto_1
    if-lt v2, v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, v3, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v5, v5, v2

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0
.end method

.method public containsSymbol([CII)Z
    .locals 5

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v0, v1, v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v3, v3

    if-ne p3, v3, :cond_4

    :goto_1
    if-lt v1, p3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int v3, p2, v1

    aget-char v3, p1, v3

    iget-object v4, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v4, v4, v1

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0
.end method

.method protected rehash()V
    .locals 9

    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    int-to-float v4, v2

    iget v5, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fLoadFactor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    iput-object v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v4, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v4, v4

    iput v4, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

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
    iget-object v5, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    if-eqz v6, :cond_3

    iget-object v7, v6, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    const/4 v8, 0x0

    iget-object v6, v6, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v6, v6

    invoke-virtual {p0, v7, v8, v6}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v6

    rem-int/2addr v6, v2

    aget-object v7, v3, v6

    if-eqz v7, :cond_2

    aget-object v7, v3, v6

    iput-object v1, v7, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    :cond_2
    aget-object v7, v3, v6

    iput-object v7, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    const/4 v7, 0x0

    iput-object v7, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v1, v3, v6

    goto :goto_2

    :cond_3
    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    :goto_2
    move-object v1, v5

    goto :goto_1
.end method
