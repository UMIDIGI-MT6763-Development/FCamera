.class public Lmf/org/apache/xml/resolver/readers/TextCatalogReader;
.super Ljava/lang/Object;
.source "TextCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/CatalogReader;


# instance fields
.field protected caseSensitive:Z

.field protected catfile:Ljava/io/InputStream;

.field protected stack:[I

.field protected tokenStack:Ljava/util/Stack;

.field protected top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    return-void
.end method

.method public getCaseSensitive()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return v0
.end method

.method protected nextChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aget v0, v1, v0

    return v0
.end method

.method protected nextToken()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    const-string v0, ""

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    :cond_1
    const/4 v2, 0x0

    const/16 v3, 0x20

    if-le v1, v3, :cond_d

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-gez v4, :cond_2

    return-object v2

    :cond_2
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_7

    if-ne v4, v2, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v1

    :goto_1
    if-ne v3, v2, :cond_3

    if-eq v1, v2, :cond_4

    :cond_3
    if-gtz v1, :cond_6

    :cond_4
    if-ltz v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogException;

    const/16 v1, 0x8

    const-string v2, "Unterminated comment in catalog file; EOF treated as end-of-comment."

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v3

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v6, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v4, v5, v6

    iget v4, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/2addr v4, v7

    iput v4, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v1, v5, v4

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v1

    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v1, v4, :cond_b

    const/16 v4, 0x27

    if-ne v1, v4, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    if-gt v1, v3, :cond_9

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v4

    if-ne v1, v2, :cond_a

    if-ne v4, v2, :cond_a

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v3, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/2addr v3, v7

    iput v3, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v1, v2, v3

    iget v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/2addr v1, v7

    iput v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v4, v2, v1

    return-object v0

    :cond_a
    new-array v6, v7, [C

    int-to-char v1, v1

    aput-char v1, v6, v5

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v4

    goto :goto_2

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v2

    if-ne v2, v1, :cond_c

    return-object v0

    :cond_c
    new-array v3, v7, [C

    int-to-char v2, v2

    aput-char v2, v3, v5

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_1

    return-object v2
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

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
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object p2, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    return-void

    :cond_3
    iget-boolean v4, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z

    if-eqz v4, :cond_4

    move-object v4, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    invoke-static {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArgCount(I)I

    move-result v5

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    move-object v0, p2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-lt v7, v5, :cond_6

    new-instance v5, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v5, v4, v6}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p1, v5}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextToken()Ljava/lang/String;

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

    if-ne v5, v6, :cond_8

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "Invalid catalog entry"

    invoke-virtual {v0, v2, v4, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    goto :goto_0

    :cond_9
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

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {p2}, Lmf/org/apache/xml/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :cond_a
    return-void
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    :try_start_1
    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 p2, 0x1

    const-string v1, "Failed to load catalog, file not found"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return-void
.end method
