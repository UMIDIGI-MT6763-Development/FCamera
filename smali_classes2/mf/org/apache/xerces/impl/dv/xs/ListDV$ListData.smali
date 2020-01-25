.class final Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;
.super Ljava/util/AbstractList;
.source "ListDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/ObjectList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/ListDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListData"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field final data:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return v0

    :cond_0
    aget-object v2, v2, v1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v0, v0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v3, v3, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    return v1

    :cond_0
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public item(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->getLength()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->canonical:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-lez v0, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-lt v2, v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->canonical:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
