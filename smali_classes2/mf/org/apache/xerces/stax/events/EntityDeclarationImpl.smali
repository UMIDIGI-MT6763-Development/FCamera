.class public final Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "EntityDeclarationImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/EntityDeclaration;


# instance fields
.field private final fName:Ljava/lang/String;

.field private final fNotationName:Ljava/lang/String;

.field private final fPublicId:Ljava/lang/String;

.field private final fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0, p5}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getReplacementText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    const-string v0, "<!ENTITY "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    const/16 v1, 0x22

    if-eqz v0, :cond_0

    const-string v0, " PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\" \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_0
    const-string v0, " SYSTEM \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " NDATA "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v0, p1}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
