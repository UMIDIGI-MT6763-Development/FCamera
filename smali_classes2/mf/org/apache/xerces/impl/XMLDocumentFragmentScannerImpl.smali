.class public Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLScanner;
.source "XMLDocumentFragmentScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/impl/XMLEntityHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;,
        Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;,
        Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;
    }
.end annotation


# static fields
.field protected static final DEBUG_CONTENT_SCANNING:Z = false

.field private static final DEBUG_DISPATCHER:Z = false

.field private static final DEBUG_SCANNER_STATE:Z = false

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_CDATA:I = 0xf

.field protected static final SCANNER_STATE_COMMENT:I = 0x2

.field protected static final SCANNER_STATE_CONTENT:I = 0x7

.field protected static final SCANNER_STATE_DOCTYPE:I = 0x4

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0xd

.field protected static final SCANNER_STATE_PI:I = 0x3

.field protected static final SCANNER_STATE_REFERENCE:I = 0x8

.field protected static final SCANNER_STATE_ROOT_ELEMENT:I = 0x6

.field protected static final SCANNER_STATE_START_OF_MARKUP:I = 0x1

.field protected static final SCANNER_STATE_TERMINATED:I = 0xe

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x10


# instance fields
.field protected final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field protected final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field protected final fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fCurrentElement:Lmf/org/apache/xerces/xni/QName;

.field protected fDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field protected final fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

.field protected fEntityStack:[I

.field protected fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

.field protected fHasExternalDTD:Z

.field protected fInScanContent:Z

.field protected fIsEntityDeclaredVC:Z

.field protected fMarkupDepth:I

.field protected fNotifyBuiltInRefs:Z

.field private final fQName:Lmf/org/apache/xerces/xni/QName;

.field private fSawSpace:Z

.field protected fScannerState:I

.field private final fSingleChar:[C

.field protected fStandalone:Z

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStrings:[Ljava/lang/String;

.field private fTempAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

.field protected final fTempString:Lmf/org/apache/xerces/xni/XMLString;

.field protected final fTempString2:Lmf/org/apache/xerces/xni/XMLString;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "http://xml.org/sax/features/namespaces"

    const-string v1, "http://xml.org/sax/features/validation"

    const-string v2, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    const-string v3, "http://apache.org/xml/features/scanner/notify-char-refs"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sput-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v3, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v4, "http://apache.org/xml/properties/internal/entity-resolver"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    new-instance v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    return-object p0
.end method

.method private handleCharacter(CLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, p2, v2, v2, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1, v0, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {p1, p2, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)V

    return-object v0
.end method

.method public endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v0, v0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v0, v2, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/4 v2, 0x0

    iput v2, v0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    aget v2, v2, v3

    if-eq v0, v2, :cond_1

    const-string v0, "MarkupEntityMismatch"

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScanningAttribute:Z

    if-nez v0, :cond_2

    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public getDispatcherName(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)Ljava/lang/String;
    .locals 0

    const-string p1, "null"

    return-object p1
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getScannerStateName(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "??? ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string p1, "SCANNER_STATE_TEXT_DECL"

    return-object p1

    :pswitch_2
    const-string p1, "SCANNER_STATE_CDATA"

    return-object p1

    :pswitch_3
    const-string p1, "SCANNER_STATE_TERMINATED"

    return-object p1

    :pswitch_4
    const-string p1, "SCANNER_STATE_END_OF_INPUT"

    return-object p1

    :pswitch_5
    const-string p1, "SCANNER_STATE_REFERENCE"

    return-object p1

    :pswitch_6
    const-string p1, "SCANNER_STATE_CONTENT"

    return-object p1

    :pswitch_7
    const-string p1, "SCANNER_STATE_ROOT_ELEMENT"

    return-object p1

    :pswitch_8
    const-string p1, "SCANNER_STATE_DOCTYPE"

    return-object p1

    :pswitch_9
    const-string p1, "SCANNER_STATE_PI"

    return-object p1

    :pswitch_a
    const-string p1, "SCANNER_STATE_COMMENT"

    return-object p1

    :pswitch_b
    const-string p1, "SCANNER_STATE_START_OF_MARKUP"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handleEndElement(Lmf/org/apache/xerces/xni/QName;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    sub-int/2addr v3, v1

    aget v2, v2, v3

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    const-string v0, "ElementEntityMismatch"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v2, v4, :cond_1

    const-string v2, "ETagRequired"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    iget p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return p1
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLScanner;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setNamespaces(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->clear()V

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fParserSettings:Z

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    :goto_0
    :try_start_1
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    if-eqz v0, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    :cond_1
    :goto_2
    return-void
.end method

.method protected scanAttribute(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2, v1, v0, v0, v1}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_1

    const-string v0, "EqRequiredInAttribute"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-interface {p1, v5, v6, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v5

    if-ne v0, v5, :cond_2

    const-string v0, "AttributeNotUnique"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->setNonNormalizedValue(ILjava/lang/String;)V

    :cond_3
    invoke-interface {p1, v1, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    return-void
.end method

.method protected scanCDATASection(Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v1, "]]"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanData(Ljava/lang/String;Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_a

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget p1, p1, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {p1, v3, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    move p1, v1

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_6

    if-lez p1, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    const/16 v3, 0x800

    if-le p1, v3, :cond_4

    div-int/lit16 v5, p1, 0x800

    rem-int/lit16 v6, p1, 0x800

    move p1, v1

    :goto_2
    if-lt p1, v3, :cond_3

    :goto_3
    if-lt v1, v5, :cond_2

    if-eqz v6, :cond_6

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iput v6, p1, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_5

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {p1, v3, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    if-lt v1, p1, :cond_5

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {p1, v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_7

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_7
    return v2

    :cond_8
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v1, "]]"

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {p1, v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_b

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {p1, v3, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_b
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isInvalidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {p1, v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "InvalidCharInCDSect"

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v4, 0x10

    invoke-static {p1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto/16 :goto_0
.end method

.method protected scanCharReference()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I

    move-result v0

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyCharRefs:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCharRefLiteral:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v1, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fValidation:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    goto :goto_0

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    const-string v2, "CHAR_REF_PROBABLE_WS"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v2, v3, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyCharRefs:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCharRefLiteral:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method protected scanComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanComment(Lmf/org/apache/xerces/util/XMLStringBuffer;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected scanContent()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanContent(Lmf/org/apache/xerces/xni/XMLString;)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    move v1, v2

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget v3, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, v0, v4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    const/16 v0, 0x5d

    if-ne v1, v0, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget v3, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-nez v3, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CDEndInContent"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v0, v0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    move v1, v2

    :cond_5
    return v1
.end method

.method public scanDocument(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;->dispatch(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method protected scanEndElement()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "ETagRequired"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ETagUnterminated"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    sub-int/2addr v4, v2

    aget v3, v3, v4

    if-ge v0, v3, :cond_2

    const-string v0, "ElementEntityMismatch"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return v0
.end method

.method protected scanEntityReference()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NameRequiredInReference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "SemicolonRequiredInReference"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v1, v3

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    const/16 v0, 0x26

    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fLtSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x3c

    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fLtSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fGtSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    const/16 v0, 0x3e

    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fGtSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_5

    const/16 v0, 0x22

    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAposSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_6

    const/16 v0, 0x27

    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAposSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isUnparsedEntity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "ReferenceToUnparsedEntity"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fValidation:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "EntityNotDeclared"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v1, v4, v5, v6, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v1, "EntityNotDeclared"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method protected scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected scanStartElement()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2, v1, v0, v0, v1}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    const/16 v4, 0x3e

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move v0, v5

    goto :goto_2

    :cond_1
    const/16 v7, 0x2f

    if-ne v3, v7, :cond_6

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ElementUnterminated"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v6

    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v2, v6

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    sub-int/2addr v4, v6

    aget v3, v3, v4

    if-ge v2, v3, :cond_3

    const-string v2, "ElementEntityMismatch"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v2, v3, v4, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v2, v3, v4, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_5
    :goto_3
    return v0

    :cond_6
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartChar(I)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v2, :cond_9

    :cond_7
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v2, :cond_9

    :cond_8
    const-string v2, "ElementUnterminated"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    goto/16 :goto_1
.end method

.method protected scanStartElementAfterName()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move v0, v3

    goto :goto_1

    :cond_0
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ElementUnterminated"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v4

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v1, v4

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    sub-int/2addr v6, v4

    aget v5, v5, v6

    if-ge v1, v5, :cond_2

    const-string v1, "ElementEntityMismatch"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v3, v4, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v3, v4, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_4
    :goto_2
    return v0

    :cond_5
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartChar(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSawSpace:Z

    if-nez v2, :cond_8

    :cond_6
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSawSpace:Z

    if-nez v1, :cond_8

    :cond_7
    const-string v1, "ElementUnterminated"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSawSpace:Z

    goto/16 :goto_0
.end method

.method protected scanStartElementName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSawSpace:Z

    return-void
.end method

.method protected scanXMLDeclOrTextDecl(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lmf/org/apache/xerces/impl/XMLScanner;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    aget-object v4, v0, v1

    const/4 v5, 0x2

    aget-object v0, v0, v5

    if-eqz v0, :cond_0

    const-string v5, "yes"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setStandalone(Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setXMLVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {v1, v3, v4, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, v3, v4, v0, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isEncodingExternallySpecified()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setEncoding(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected final setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1f

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    const-string v0, "scanner/notify-builtin-refs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    :cond_0
    return-void
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string v1, "$fragment$"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const-string v1, "internal/entity-manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    return-void

    :cond_0
    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    const-string v0, "internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p2, Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    if-eqz p1, :cond_1

    check-cast p2, Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    return-void

    :cond_2
    return-void
.end method

.method protected final setScannerState(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    return-void
.end method

.method public startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    aput v2, v0, v1

    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/XMLScanner;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isEntityDeclInExternalSubset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScanningAttribute:Z

    if-nez v0, :cond_2

    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method
