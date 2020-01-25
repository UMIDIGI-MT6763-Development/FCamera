.class final Lmf/org/apache/xerces/xpointer/ElementSchemePointer;
.super Ljava/lang/Object;
.source "ElementSchemePointer.java"

# interfaces
.implements Lmf/org/apache/xerces/xpointer/XPointerPart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;,
        Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;
    }
.end annotation


# instance fields
.field private fChildSequence:[I

.field private fCurrentChildDepth:I

.field private fCurrentChildPosition:I

.field private fCurrentChildSequence:[I

.field protected fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field fFoundDepth:I

.field private fIsElementFound:Z

.field private fIsFragmentResolved:Z

.field private fIsResolveElement:Z

.field fIsShortHand:Z

.field private fSchemeData:Ljava/lang/String;

.field private fSchemeName:Ljava/lang/String;

.field private fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

.field private fShortHandPointerName:Ljava/lang/String;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fWasOnlyEmptyElementFound:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method


# virtual methods
.method protected checkMatch()Z
    .locals 7

    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v0, v0

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v4, v3

    if-lt v0, v4, :cond_0

    goto :goto_1

    :cond_0
    aget v3, v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v0, v0

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/2addr v3, v1

    if-gt v0, v3, :cond_7

    move v0, v2

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v4, v3

    if-lt v0, v4, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v5, v4

    add-int/lit8 v6, v0, 0x2

    if-ge v5, v6, :cond_6

    return v2

    :cond_6
    aget v3, v3, v0

    add-int/lit8 v0, v0, 0x1

    aget v4, v4, v0

    if-eq v3, v4, :cond_4

    return v2

    :cond_7
    return v2
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->initErrorReporter()V

    return-void
.end method

.method protected initErrorReporter()V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/XPTR"

    new-instance v2, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    return-void
.end method

.method public isChildFragmentResolved()Z
    .locals 4

    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v1, v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->isChildFragmentResolved()Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-lt v0, v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public isFragmentResolved()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return v0
.end method

.method protected matchChildSequence(Lmf/org/apache/xerces/xni/QName;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt p1, v1, :cond_0

    array-length p1, v0

    new-array p1, p1, [I

    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    mul-int/2addr v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-boolean p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    if-nez p2, :cond_3

    iget-object p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v1, p2, v0

    add-int/2addr v0, p1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iget p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-le p2, v0, :cond_1

    if-nez v0, :cond_b

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result p2

    if-eqz p2, :cond_2

    iput-boolean p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iget p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    goto :goto_2

    :cond_2
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    goto :goto_2

    :cond_3
    if-ne p2, p1, :cond_8

    iget p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-ne p2, v0, :cond_4

    iput-boolean p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto :goto_0

    :cond_4
    if-ge p2, v0, :cond_5

    if-nez v0, :cond_6

    :cond_5
    iget p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-le p2, v0, :cond_7

    if-nez v0, :cond_7

    :cond_6
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    :cond_7
    :goto_0
    iget-object p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    aput v3, p2, v0

    sub-int/2addr v0, p1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    aget p2, p2, v0

    add-int/2addr p2, p1

    iput p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    goto :goto_2

    :cond_8
    if-ne p2, v2, :cond_b

    iget-object p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v1, p2, v0

    add-int/2addr v1, p1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    if-nez p2, :cond_9

    iput-boolean p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    goto :goto_1

    :cond_9
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    :goto_1
    iput-boolean p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto :goto_2

    :cond_a
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    :cond_b
    :goto_2
    iget-boolean p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    return p1
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->init()V

    new-instance v6, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v0, v1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)V

    new-instance v0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v4, 0x0

    move-object v2, v6

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->access$1(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "InvalidElementSchemeXPointer"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    move v3, v2

    :goto_0
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)Z

    move-result v4

    if-nez v4, :cond_1

    new-array p1, v3, [I

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    new-array p1, v3, [I

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    const-string v4, "InvalidElementSchemeXPointer"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {v6}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v4

    invoke-static {v6, v4}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    new-instance v4, Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    iget-object v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    iget-object v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    iget-object v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->setSchemeName(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    move p2, v2

    :goto_0
    iget-object p3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v0, p3

    if-lez v0, :cond_2

    invoke-virtual {p0, p1, p4}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->matchChildSequence(Lmf/org/apache/xerces/xni/QName;I)Z

    move-result p1

    iput-boolean p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    array-length p1, p3

    if-gtz p1, :cond_3

    iput-boolean p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    :goto_1
    iget-boolean p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return p1
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    return-void
.end method
