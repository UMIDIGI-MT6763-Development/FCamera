.class public final Lmf/org/apache/xerces/stax/events/CharactersImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "CharactersImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/Characters;


# instance fields
.field private final fData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmf/javax/xml/stream/Location;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    return-object v0
.end method

.method public isCData()Z
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/CharactersImpl;->getEventType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnorableWhiteSpace()Z
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/CharactersImpl;->getEventType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v0, p1}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
