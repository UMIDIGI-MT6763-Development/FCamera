.class final Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;
.super Ljava/lang/Object;
.source "StAXValidatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EventHelper"
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0x3ff

.field private static final CHUNK_SIZE:I = 0x400


# instance fields
.field private final fCharBuffer:[C

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x400

    new-array p1, p1, [C

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    return-void
.end method

.method private fillDeclaredPrefixes(Ljava/util/Iterator;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Namespace;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, v1, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/events/EndElement;)V
    .locals 0

    invoke-interface {p1}, Lmf/javax/xml/stream/events/EndElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    return-void
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/events/StartElement;)V
    .locals 0

    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    return-void
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillXMLAttributes(Lmf/javax/xml/stream/events/StartElement;)V
    .locals 6

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, v1, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getDTDType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v2, v2, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v3, v3, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :goto_1
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, v1, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->isSpecified()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    goto :goto_0
.end method

.method private sendCharactersToValidator(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit16 v1, v0, 0x3ff

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    invoke-virtual {p1, v3, v1, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    invoke-virtual {v4, v5, v3, v1}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v4}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit16 v4, v1, 0x400

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    invoke-virtual {p1, v1, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, v1, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    const/16 v6, 0x400

    invoke-virtual {v1, v5, v3, v6}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v1

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1, v5, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method final validate(Lmf/javax/xml/stream/XMLEventReader;Lmf/javax/xml/transform/stax/StAXResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$8(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;Lmf/javax/xml/stream/events/XMLEvent;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-result-object p2

    invoke-virtual {p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object p2

    const-string v0, "StAXIllegalInitialState"

    invoke-static {p2, v0, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, p2, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->setup(Lmf/javax/xml/stream/Location;Lmf/javax/xml/transform/stax/StAXResult;Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$3(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/StAXLocationWrapper;

    move-result-object v0

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v4}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$4(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v4

    invoke-virtual {p2, v0, v3, v4, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    :goto_1
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->nextEvent()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-static {p2, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$8(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;Lmf/javax/xml/stream/events/XMLEvent;)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->cdata(Lmf/javax/xml/stream/events/Characters;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    invoke-virtual {p2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object p2

    invoke-interface {p2}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    invoke-virtual {p2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object p2

    check-cast p2, Lmf/javax/xml/stream/events/DTD;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-interface {p2}, Lmf/javax/xml/stream/events/DTD;->getEntities()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->processEntityDeclarations(Ljava/util/List;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->doctypeDecl(Lmf/javax/xml/stream/events/DTD;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/EntityReference;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->entityReference(Lmf/javax/xml/stream/events/EntityReference;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/EndDocument;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->endDocument(Lmf/javax/xml/stream/events/EndDocument;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p2, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$6(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;I)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/StartDocument;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->startDocument(Lmf/javax/xml/stream/events/StartDocument;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Comment;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->comment(Lmf/javax/xml/stream/events/Comment;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    invoke-interface {p2}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->characters(Lmf/javax/xml/stream/events/Characters;)V

    goto/16 :goto_1

    :cond_5
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object p2

    invoke-interface {p2}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/ProcessingInstruction;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->processingInstruction(Lmf/javax/xml/stream/events/ProcessingInstruction;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Lmf/javax/xml/stream/events/XMLEvent;->asEndElement()Lmf/javax/xml/stream/events/EndElement;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2}, Lmf/javax/xml/stream/events/EndElement;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Lmf/javax/xml/stream/events/EndElement;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$3(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/StAXLocationWrapper;

    move-result-object v0

    invoke-interface {p2}, Lmf/javax/xml/stream/events/EndElement;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p2, v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p2, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$6(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;I)V

    if-gtz v0, :cond_2

    :goto_2
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p1

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    :pswitch_a
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p2, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$6(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;I)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Lmf/javax/xml/stream/events/XMLEvent;->asStartElement()Lmf/javax/xml/stream/events/StartElement;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2}, Lmf/javax/xml/stream/events/StartElement;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillXMLAttributes(Lmf/javax/xml/stream/events/StartElement;)V

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Lmf/javax/xml/stream/events/StartElement;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$4(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v0

    invoke-interface {p2}, Lmf/javax/xml/stream/events/StartElement;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$3(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/StAXLocationWrapper;

    move-result-object v0

    invoke-interface {p2}, Lmf/javax/xml/stream/events/StartElement;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p2, v0, v4, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
