.class final Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;
.super Ljava/lang/Object;
.source "SoftReferenceGrammarPool.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;,
        Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;
    }
.end annotation


# static fields
.field protected static final TABLE_SIZE:I = 0xb

.field protected static final ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

.field protected fPoolIsLocked:Z

.field protected final fReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    const/16 v1, 0xb

    new-array v1, v1, [Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    new-array p1, p1, [Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method

.method private clean()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0
.end method

.method private removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 3

    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->bucket:I

    iget-object v2, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aput-object v2, v0, v1

    :goto_0
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    const/4 v1, 0x0

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object p1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-object p1
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 1

    iget-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    return-void

    :cond_0
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v3, v3

    rem-int/2addr v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v2, v3, v2

    :goto_0
    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v3, v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xni/grammars/Grammar;

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    :cond_1
    iget v3, v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-ne v3, v1, :cond_2

    iget-object v3, v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    iget-object v2, v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 3

    instance-of v0, p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    check-cast p2, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_1
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_3
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 5

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v3, v3

    rem-int/2addr v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v2, v3, v2

    :goto_0
    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v3, v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xni/grammars/Grammar;

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    :cond_1
    iget v4, v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-ne v4, v1, :cond_2

    iget-object v4, v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v0

    return-object v3

    :cond_2
    :goto_1
    iget-object v2, v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 2

    instance-of v0, p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-eqz v0, :cond_2

    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    xor-int p1, v0, v1

    return p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public lockPool()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method

.method public putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 10

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v1, 0x7fffffff

    and-int/2addr v1, v2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v3, v3

    rem-int v8, v1, v3

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v1, v1, v8

    :goto_0
    if-nez v1, :cond_0

    new-instance v9, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v6, v1, v8

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v1, v9

    move v3, v8

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;-><init>(IILmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/Grammar;Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Ljava/lang/ref/ReferenceQueue;)V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aput-object v9, p1, v8

    iget p1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    monitor-exit v0

    goto :goto_1

    :cond_0
    iget v3, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-ne v3, v2, :cond_2

    iget-object v3, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    new-instance v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v1, p1, v3}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;-><init>(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Lmf/org/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v2, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public removeGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v3, v3

    rem-int/2addr v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v2, v3, v2

    :goto_0
    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v3, v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-ne v3, v1, :cond_1

    iget-object v3, v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    iget-object v2, v2, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object p1

    return-object p1
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter p1

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlockPool()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method
