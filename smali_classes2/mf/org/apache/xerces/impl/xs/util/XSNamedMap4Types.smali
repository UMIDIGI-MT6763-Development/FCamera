.class public final Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;
.super Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
.source "XSNamedMap4Types.java"


# instance fields
.field private final fType:S


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;S)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V

    iput-short p3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;IS)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;I)V

    iput-short p4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    return-void
.end method


# virtual methods
.method public declared-synchronized getLength()I
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNSNum:I

    if-lt v1, v3, :cond_3

    new-array v1, v2, [Lmf/org/apache/xerces/xs/XSObject;

    move v3, v0

    move v4, v3

    :goto_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNSNum:I

    if-lt v3, v5, :cond_2

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    new-array v3, v2, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    :goto_2
    if-lt v0, v2, :cond_0

    goto :goto_3

    :cond_0
    aget-object v3, v1, v0

    check-cast v3, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    iget-short v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    aput-object v3, v4, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v5, v5, v3

    invoke-virtual {v5, v1, v4}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized item(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->getLength()I

    :cond_0
    if-ltz p1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public itemByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSObject;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNSNum:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNamespaces:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result p2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    if-ne p2, v0, :cond_1

    return-object p1

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
