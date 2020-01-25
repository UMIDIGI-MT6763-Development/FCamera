.class public Lmf/org/apache/xml/resolver/Resolver;
.super Lmf/org/apache/xml/resolver/Catalog;
.source "Resolver.java"


# static fields
.field public static final RESOLVER:I

.field public static final SYSTEMREVERSE:I

.field public static final SYSTEMSUFFIX:I

.field public static final URISUFFIX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "URISUFFIX"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Resolver;->URISUFFIX:I

    const-string v0, "SYSTEMSUFFIX"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMSUFFIX:I

    const-string v0, "RESOLVER"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Resolver;->RESOLVER:I

    const-string v0, "SYSTEMREVERSE"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMREVERSE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V

    return-void
.end method

.method private appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method private resolveAllLocalSystem(Ljava/lang/String;)Ljava/util/Vector;
    .locals 8

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v6

    sget v7, Lmf/org/apache/xml/resolver/Resolver;->SYSTEM:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v1, :cond_1

    invoke-virtual {v5, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_4
    invoke-virtual {v5, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private declared-synchronized resolveAllSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget-object v2, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogs:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xml/resolver/Resolver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object v2, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogs:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Resolver;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xml/resolver/Resolver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {v3, v2}, Lmf/org/apache/xml/resolver/Resolver;->parseCatalog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_4
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v5, v5, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v6, "Failed to load catalog, I/O error"

    invoke-virtual {v5, v4, v6, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v5, v5, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v6, "Failed to load catalog, file not found"

    invoke-virtual {v5, v4, v6, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v5, v5, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v6, "Malformed Catalog URL"

    invoke-virtual {v5, v4, v6, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogs:Ljava/util/Vector;

    invoke-virtual {v2, v3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move-object v2, v3

    :goto_2
    sget v3, Lmf/org/apache/xml/resolver/Resolver;->DOCTYPE:I

    if-ne p1, v3, :cond_1

    invoke-virtual {v2, p2, p3, p4}, Lmf/org/apache/xml/resolver/Resolver;->resolveDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_5
    sget v3, Lmf/org/apache/xml/resolver/Resolver;->DOCUMENT:I

    if-ne p1, v3, :cond_2

    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/Resolver;->resolveDocument()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_6
    sget v3, Lmf/org/apache/xml/resolver/Resolver;->ENTITY:I

    if-ne p1, v3, :cond_3

    invoke-virtual {v2, p2, p3, p4}, Lmf/org/apache/xml/resolver/Resolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_7
    sget v3, Lmf/org/apache/xml/resolver/Resolver;->NOTATION:I

    if-ne p1, v3, :cond_4

    invoke-virtual {v2, p2, p3, p4}, Lmf/org/apache/xml/resolver/Resolver;->resolveNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_8
    sget v3, Lmf/org/apache/xml/resolver/Resolver;->PUBLIC:I

    if-ne p1, v3, :cond_5

    invoke-virtual {v2, p3, p4}, Lmf/org/apache/xml/resolver/Resolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_9
    sget v3, Lmf/org/apache/xml/resolver/Resolver;->SYSTEM:I

    if-ne p1, v3, :cond_7

    invoke-virtual {v2, p4}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllSystem(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_3
    if-eqz v0, :cond_6

    monitor-exit p0

    return-object v0

    :cond_6
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_7
    :try_start_a
    sget v3, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMREVERSE:I

    if-ne p1, v3, :cond_8

    invoke-virtual {v2, p4}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllSystemReverse(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private resolveLocalSystemReverse(Ljava/lang/String;)Ljava/util/Vector;
    .locals 8

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v6

    sget v7, Lmf/org/apache/xml/resolver/Resolver;->SYSTEM:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v1, :cond_1

    invoke-virtual {v5, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_4
    invoke-virtual {v5, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    .locals 5

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v0

    sget v1, Lmf/org/apache/xml/resolver/Resolver;->URISUFFIX:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/Resolver;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/resolver/Resolver;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/resolver/Resolver;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "URISUFFIX"

    invoke-virtual {v3, v2, v4, v0, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v1, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMSUFFIX:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/Resolver;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/resolver/Resolver;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/resolver/Resolver;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "SYSTEMSUFFIX"

    invoke-virtual {v3, v2, v4, v0, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V

    return-void
.end method

.method protected queryResolver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xml/resolver/Resolver;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?command="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&format=tr9401&uri="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&uri2="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    :try_start_0
    new-instance p4, Ljava/net/URL;

    invoke-direct {p4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Resolver;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xml/resolver/Resolver;

    invoke-virtual {p4}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4

    invoke-virtual {v1, v2, p4}, Lmf/org/apache/xml/resolver/Resolver;->parseCatalog(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    iget-object p4, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p4, p4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "I/O Exception opening resolver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    return-object p2

    :catch_1
    iget-object p4, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p4, p4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed resolver URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    return-object p2

    :catch_2
    move-exception p4

    invoke-virtual {p4}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object p4, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p4, p4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unparseable catalog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result p4

    const/4 v0, 0x5

    if-ne p4, v0, :cond_2

    iget-object p4, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p4, p4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown catalog format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public resolveAllSystem(Ljava/lang/String;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllLocalSystem(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    :cond_0
    sget v1, Lmf/org/apache/xml/resolver/Resolver;->SYSTEM:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    return-object p1

    :cond_1
    return-object v2
.end method

.method public resolveAllSystemReverse(Ljava/lang/String;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveLocalSystemReverse(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    :cond_0
    sget v1, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMREVERSE:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method protected resolveExternalPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fpi2l"

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, p1, v1}, Lmf/org/apache/xml/resolver/Resolver;->queryResolver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xml/resolver/Resolver;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, v1}, Lmf/org/apache/xml/resolver/Resolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method protected resolveExternalSystem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "i2l"

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, p1, v1}, Lmf/org/apache/xml/resolver/Resolver;->queryResolver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xml/resolver/Resolver;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    sget v0, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lmf/org/apache/xml/resolver/Resolver;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    sget v3, Lmf/org/apache/xml/resolver/Resolver;->RESOLVER:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lmf/org/apache/xml/resolver/Resolver;->resolveExternalSystem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v1, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xml/resolver/Resolver;->resolveExternalPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1
.end method

.method public resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    sget v0, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    sget v3, Lmf/org/apache/xml/resolver/Resolver;->RESOLVER:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xml/resolver/Resolver;->resolveExternalSystem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_3
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    sget v3, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMSUFFIX:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1
.end method

.method public resolveSystemReverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllSystemReverse(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    sget v0, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    sget v3, Lmf/org/apache/xml/resolver/Resolver;->RESOLVER:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xml/resolver/Resolver;->resolveExternalSystem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_3
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    sget v3, Lmf/org/apache/xml/resolver/Resolver;->URISUFFIX:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1
.end method

.method public setupReaders()V
    .locals 4

    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    new-instance v1, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;

    invoke-direct {v1, v0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    const-string v0, "XCatalog"

    const-string v2, "org.apache.xml.resolver.readers.XCatalogReader"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    const-string v2, "catalog"

    const-string v3, "org.apache.xml.resolver.readers.ExtendedXMLCatalogReader"

    invoke-virtual {v1, v0, v2, v3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/xml"

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xml/resolver/Resolver;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    new-instance v0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;-><init>()V

    const-string v1, "text/plain"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xml/resolver/Resolver;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    return-void
.end method
