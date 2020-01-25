.class public Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
.super Ljava/util/AbstractMap;
.source "XSNamedMapImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSNamedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;
    }
.end annotation


# static fields
.field public static final EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;


# instance fields
.field fArray:[Lmf/org/apache/xerces/xs/XSObject;

.field private fEntrySet:Ljava/util/Set;

.field fLength:I

.field final fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

.field final fNSNum:I

.field final fNamespaces:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    const/4 v1, 0x0

    new-array v2, v1, [Lmf/org/apache/xerces/xs/XSObject;

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    new-array p1, v0, [Lmf/org/apache/xerces/util/SymbolHash;

    aput-object p2, p1, v2

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;I)V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    iput p3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    return-void
.end method

.method public constructor <init>([Lmf/org/apache/xerces/xs/XSObject;I)V
    .locals 5

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    return-void

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    aget-object v4, p1, v1

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    return-void
.end method

.method static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    move-result v0

    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;

    invoke-direct {v2, p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;-><init>(Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;I[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    new-instance v4, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    new-instance v5, Lmf/javax/xml/namespace/QName;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v3}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;-><init>(Lmf/javax/xml/namespace/QName;Lmf/org/apache/xerces/xs/XSObject;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p1, Lmf/javax/xml/namespace/QName;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lmf/javax/xml/namespace/QName;

    invoke-virtual {p1}, Lmf/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p1}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->itemByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public declared-synchronized getLength()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I
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
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    new-array v0, v0, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    invoke-virtual {v2, v3, v1}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz p1, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    if-lt p1, v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public itemByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSObject;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    if-eqz p1, :cond_1

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSObject;

    return-object p1

    :cond_1
    :goto_1
    iget p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    if-lt v0, p1, :cond_2

    return-object v3

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object p1, p1, v0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    move-result v0

    return v0
.end method
