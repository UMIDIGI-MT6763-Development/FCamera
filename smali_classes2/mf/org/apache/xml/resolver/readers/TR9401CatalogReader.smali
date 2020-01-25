.class public Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;
.super Lmf/org/apache/xml/resolver/readers/TextCatalogReader;
.source "TR9401CatalogReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;-><init>()V

    return-void
.end method


# virtual methods
.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    move-object v0, p2

    :cond_1
    :goto_0
    const/16 v1, 0x8

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object p2, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    return-void

    :cond_3
    iget-boolean v4, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->caseSensitive:Z

    if-eqz v4, :cond_4

    move-object v4, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v5, "DELEGATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v4, "DELEGATE_PUBLIC"
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :try_start_1
    invoke-static {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArgCount(I)I

    move-result v5

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    move-object v0, p2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    if-lt v7, v5, :cond_7

    new-instance v5, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v5, v4, v6}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p1, v5}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :cond_8
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "Invalid catalog entry"

    invoke-virtual {v0, v2, v4, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    goto :goto_0

    :cond_a
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v3

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V
    :try_end_2
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v0

    if-ne v0, v1, :cond_b

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {p2}, Lmf/org/apache/xml/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :cond_b
    return-void
.end method
