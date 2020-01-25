.class public final Lmf/org/apache/xerces/xpointer/XPointerHandler;
.super Lmf/org/apache/xerces/xinclude/XIncludeHandler;
.source "XPointerHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xpointer/XPointerProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;,
        Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;
    }
.end annotation


# instance fields
.field private final ELEMENT_SCHEME_NAME:Ljava/lang/String;

.field protected fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fFixupBase:Z

.field protected fFixupLang:Z

.field protected fFoundMatchingPtrPart:Z

.field protected fIsXPointerResolved:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

.field protected fXPointerParts:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string v0, "element"

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->ELEMENT_SCHEME_NAME:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string v0, "element"

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->ELEMENT_SCHEME_NAME:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    iput-object p3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/XPTR"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    iget-boolean p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public getPointerParts()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getXPointerPart()Lmf/org/apache/xerces/xpointer/XPointerPart;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method protected init()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->initErrorReporter()V

    return-void
.end method

.method protected initErrorReporter()V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/XPTR"

    new-instance v2, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    return-void
.end method

.method public isChildFragmentResolved()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/apache/xerces/xpointer/XPointerPart;->isChildFragmentResolved()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFragmentResolved()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/apache/xerces/xpointer/XPointerPart;->isFragmentResolved()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    :cond_1
    return v0
.end method

.method public isXPointerResolved()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    return v0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->init()V

    new-instance v6, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)V

    new-instance v0, Lmf/org/apache/xerces/xpointer/XPointerHandler$1;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$1;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v4, 0x0

    move-object v2, v6

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "InvalidXPointerExpression"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-direct {p0, v0, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "InvalidXPointerExpression"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-direct {p0, v0, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v0

    invoke-static {v6, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v3

    invoke-static {v6, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v3

    invoke-static {v6, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "XPTRTOKEN_OPEN_PAREN"

    const/4 v7, 0x2

    if-eq v4, v5, :cond_3

    if-ne v3, v7, :cond_2

    const-string v3, "MultipleShortHandPointers"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-direct {p0, v3, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v3, "InvalidXPointerExpression"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-direct {p0, v3, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    move v3, v2

    :goto_2
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v4

    invoke-static {v6, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "XPTRTOKEN_OPEN_PAREN"

    if-eq v4, v5, :cond_a

    :goto_3
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v4

    invoke-static {v6, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v5

    invoke-static {v6, v5}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "XPTRTOKEN_CLOSE_PAREN"

    if-eq v5, v8, :cond_5

    const-string v5, "SchemeDataNotFollowedByCloseParenthesis"

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p1, v8, v1

    invoke-direct {p0, v5, v8}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move v5, v2

    :goto_4
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v8

    invoke-static {v6, v8}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "XPTRTOKEN_OPEN_PAREN"

    if-eq v8, v9, :cond_9

    :goto_5
    if-eq v3, v5, :cond_7

    const-string v8, "UnbalancedParenthesisInXPointerExpression"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v9, v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v9, v7

    invoke-direct {p0, v8, v9}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    const-string v3, "element"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    iget-object v5, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v3, v5, v7}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    invoke-interface {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xpointer/XPointerPart;->setSchemeData(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xpointer/XPointerPart;->parseXPointer(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_8
    const-string v3, "SchemeUnsupported"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-direct {p0, v3, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :pswitch_1
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v0

    invoke-static {v6, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v3, "InvalidXPointerExpression"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-direct {p0, v3, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    new-instance v3, Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    iget-object v4, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v3, v4}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    invoke-interface {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xpointer/XPointerPart;

    iput-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v3, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/XPointerPart;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/XPointerPart;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iget-boolean p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez p1, :cond_4

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    :cond_4
    return v0
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :cond_1
    :goto_0
    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_3
    :goto_1
    const-string v0, "http://apache.org/xml/features/xinclude/fixup-language"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    goto :goto_2

    :cond_4
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    :cond_5
    :goto_2
    const-string v0, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    goto :goto_3

    :cond_6
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    :cond_7
    :goto_3
    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    if-ne p1, v0, :cond_8

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    :cond_8
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    iget-boolean p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method
