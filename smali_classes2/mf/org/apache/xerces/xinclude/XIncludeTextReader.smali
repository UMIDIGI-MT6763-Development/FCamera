.class public Lmf/org/apache/xerces/xinclude/XIncludeTextReader;
.super Ljava/lang/Object;
.source "XIncludeTextReader.java"


# instance fields
.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private final fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field private fReader:Ljava/io/Reader;

.field private fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field private fTempString:Lmf/org/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/xinclude/XIncludeHandler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iput-object p2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    new-instance p1, Lmf/org/apache/xerces/xni/XMLString;

    add-int/lit8 p3, p3, 0x1

    new-array p2, p3, [C

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    return-void
.end method

.method private createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    new-instance v0, Lmf/org/apache/xerces/impl/io/ASCIIReader;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method private createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/io/Latin1Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method private createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;
    .locals 7

    new-instance v6, Lmf/org/apache/xerces/impl/io/UTF16Reader;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v0, v0

    shl-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v4

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v6
.end method

.method private createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    new-instance v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    :cond_0
    return-void
.end method

.method protected consumeBOM(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0xff

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v0, :cond_1

    aget-byte v0, v1, v5

    and-int/2addr v0, v6

    aget-byte v2, v1, v3

    and-int/2addr v2, v6

    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    const/16 v3, 0xef

    if-ne v0, v3, :cond_0

    const/16 v0, 0xbb

    if-ne v2, v0, :cond_0

    const/16 v0, 0xbf

    if-eq v1, v0, :cond_5

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    const-string v0, "UTF-16"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v4, :cond_4

    aget-byte v0, v1, v5

    and-int/2addr v0, v6

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_3

    if-ne v1, v6, :cond_3

    const-string p1, "UTF-16BE"

    return-object p1

    :cond_3
    if-ne v0, v6, :cond_4

    if-ne v1, v2, :cond_4

    const-string p1, "UTF-16LE"

    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    :cond_5
    :goto_0
    return-object p2
.end method

.method protected getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected getEncodingName([B)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    const/16 v3, 0xfe

    if-ne v0, v3, :cond_0

    if-ne v2, v1, :cond_0

    const-string p1, "UTF-16BE"

    return-object p1

    :cond_0
    if-ne v0, v1, :cond_1

    if-ne v2, v3, :cond_1

    const-string p1, "UTF-16LE"

    return-object p1

    :cond_1
    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/2addr v3, v1

    const/16 v4, 0xef

    if-ne v0, v4, :cond_2

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_2

    const/16 v4, 0xbf

    if-ne v3, v4, :cond_2

    const-string p1, "UTF-8"

    return-object p1

    :cond_2
    const/4 v4, 0x3

    aget-byte p1, p1, v4

    and-int/2addr p1, v1

    const/16 v1, 0x3c

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-ne p1, v1, :cond_3

    const-string p1, "ISO-10646-UCS-4"

    return-object p1

    :cond_3
    if-ne v0, v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez p1, :cond_4

    const-string p1, "ISO-10646-UCS-4"

    return-object p1

    :cond_4
    if-nez v0, :cond_5

    if-nez v2, :cond_5

    if-ne v3, v1, :cond_5

    if-nez p1, :cond_5

    const-string p1, "ISO-10646-UCS-4"

    return-object p1

    :cond_5
    if-nez v0, :cond_6

    if-ne v2, v1, :cond_6

    if-nez v3, :cond_6

    if-nez p1, :cond_6

    const-string p1, "ISO-10646-UCS-4"

    return-object p1

    :cond_6
    const/16 v4, 0x3f

    if-nez v0, :cond_7

    if-ne v2, v1, :cond_7

    if-nez v3, :cond_7

    if-ne p1, v4, :cond_7

    const-string p1, "UTF-16BE"

    return-object p1

    :cond_7
    if-ne v0, v1, :cond_8

    if-nez v2, :cond_8

    if-ne v3, v4, :cond_8

    if-nez p1, :cond_8

    const-string p1, "UTF-16LE"

    return-object p1

    :cond_8
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_9

    const/16 v0, 0x6f

    if-ne v2, v0, :cond_9

    const/16 v0, 0xa7

    if-ne v3, v0, :cond_9

    const/16 v0, 0x94

    if-ne p1, v0, :cond_9

    const-string p1, "CP037"

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getReader(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Ljava/io/Reader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "UTF-8"

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object p1

    instance-of v1, p1, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_10

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v4, v4

    invoke-direct {v1, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v1

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    instance-of v4, v1, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_4

    instance-of v4, p1, Lmf/org/apache/xerces/util/HTTPInputSource;

    if-eqz v4, :cond_4

    move-object v4, v1

    check-cast v4, Ljava/net/HttpURLConnection;

    check-cast p1, Lmf/org/apache/xerces/util/HTTPInputSource;

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/HTTPInputSource;->getHTTPRequestProperties()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/HTTPInputSource;->getFollowHTTPRedirects()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v4, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    if-eqz v1, :cond_5

    const/16 v5, 0x3b

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    const/4 v6, 0x0

    if-eq v5, v4, :cond_9

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "charset="

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x22

    if-ne v5, v7, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_7

    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x27

    if-ne v5, v7, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_a

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    move-object v1, v6

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v1, v6

    :cond_a
    :goto_3
    const-string v5, "text/xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    const-string v1, "US-ASCII"

    goto :goto_4

    :cond_c
    const-string v5, "application/xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_e
    const-string v1, "+xml"

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_f
    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_10

    move-object v0, v1

    :cond_10
    :goto_5
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->consumeBOM(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    :cond_11
    const-string v1, "UTF-16BE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0, p1, v3}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    :cond_12
    const-string v1, "UTF-16LE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0, p1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    :cond_13
    invoke-static {v0}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v0, "ASCII"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    :cond_14
    const-string v0, "ISO8859_1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    :cond_16
    iget-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object p1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    new-instance v4, Ljava/io/IOException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "EncodingDeclInvalid"

    invoke-interface {p1, v1, v0, v3}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected isValid(I)Z
    .locals 0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result p1

    return p1
.end method

.method public parse()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getReader(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-boolean v4, v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    move v3, v1

    move v1, v5

    :goto_1
    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-eqz v1, :cond_1

    if-lez v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iput v5, v2, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iput v3, v2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v1, v0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;Z)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v3, v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v6, v6, v1

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->isValid(I)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x10

    if-eqz v7, :cond_6

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v7, v7, v1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    invoke-virtual {v7}, Ljava/io/Reader;->read()I

    move-result v7

    if-eq v7, v2, :cond_4

    iget-object v10, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v10, v10, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    add-int/lit8 v11, v3, 0x1

    int-to-char v12, v7

    aput-char v12, v10, v3

    move v3, v11

    :cond_4
    :goto_2
    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_5

    int-to-char v7, v7

    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->isValid(I)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v11, "InvalidCharInContent"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v6, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v5

    invoke-virtual {v7, v10, v11, v12, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v11, "InvalidCharInContent"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v7, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v5

    invoke-virtual {v6, v10, v11, v12, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v11, "InvalidCharInContent"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v6, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v5

    invoke-virtual {v7, v10, v11, v12, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    :goto_3
    add-int/2addr v1, v4

    goto/16 :goto_1
.end method

.method protected setBufferSize(I)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v0, v0

    add-int/lit8 p1, p1, 0x1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    new-array p1, p1, [C

    iput-object p1, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_0
    return-void
.end method

.method public setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method
