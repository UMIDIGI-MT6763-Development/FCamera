.class abstract Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.super Ljava/lang/Object;
.source "XMLEventImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/XMLEvent;


# instance fields
.field private fEventType:I

.field private fLocation:Lmf/javax/xml/stream/Location;


# direct methods
.method constructor <init>(ILmf/javax/xml/stream/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-eqz p2, :cond_0

    new-instance p1, Lmf/org/apache/xerces/stax/ImmutableLocation;

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/stax/ImmutableLocation;-><init>(Lmf/javax/xml/stream/Location;)V

    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fLocation:Lmf/javax/xml/stream/Location;

    goto :goto_0

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/stax/EmptyLocation;->getInstance()Lmf/org/apache/xerces/stax/EmptyLocation;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fLocation:Lmf/javax/xml/stream/Location;

    :goto_0
    return-void
.end method


# virtual methods
.method public final asCharacters()Lmf/javax/xml/stream/events/Characters;
    .locals 1

    move-object v0, p0

    check-cast v0, Lmf/javax/xml/stream/events/Characters;

    return-object v0
.end method

.method public final asEndElement()Lmf/javax/xml/stream/events/EndElement;
    .locals 1

    move-object v0, p0

    check-cast v0, Lmf/javax/xml/stream/events/EndElement;

    return-object v0
.end method

.method public final asStartElement()Lmf/javax/xml/stream/events/StartElement;
    .locals 1

    move-object v0, p0

    check-cast v0, Lmf/javax/xml/stream/events/StartElement;

    return-object v0
.end method

.method public final getEventType()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    return v0
.end method

.method public final getLocation()Lmf/javax/xml/stream/Location;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fLocation:Lmf/javax/xml/stream/Location;

    return-object v0
.end method

.method public final getSchemaType()Lmf/javax/xml/namespace/QName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAttribute()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    const/16 v1, 0xa

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isCharacters()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    const/16 v1, 0xc

    if-eq v1, v0, :cond_0

    const/4 v1, 0x6

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isEndDocument()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    const/16 v1, 0x8

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEndElement()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEntityReference()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    const/16 v1, 0x9

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isNamespace()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    const/16 v1, 0xd

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isProcessingInstruction()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isStartDocument()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isStartElement()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->writeAsEncodedUnicode(Ljava/io/Writer;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
