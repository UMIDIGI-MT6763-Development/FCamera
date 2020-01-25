.class final Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;
.super Ljava/lang/Object;
.source "XPointerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xpointer/XPointerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Tokens"
.end annotation


# static fields
.field private static final INITIAL_TOKEN_COUNT:I = 0x100

.field private static final XPTRTOKEN_CLOSE_PAREN:I = 0x1

.field private static final XPTRTOKEN_OPEN_PAREN:I = 0x0

.field private static final XPTRTOKEN_SCHEMEDATA:I = 0x4

.field private static final XPTRTOKEN_SCHEMENAME:I = 0x3

.field private static final XPTRTOKEN_SHORTHAND:I = 0x2


# instance fields
.field private fCurrentTokenIndex:I

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fTokenCount:I

.field private fTokenNames:Ljava/util/HashMap;

.field private fTokens:[I

.field private final fgTokenNames:[Ljava/lang/String;

.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 4

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "XPTRTOKEN_OPEN_PAREN"

    const-string v0, "XPTRTOKEN_CLOSE_PAREN"

    const-string v1, "XPTRTOKEN_SHORTHAND"

    const-string v2, "XPTRTOKEN_SCHEMENAME"

    const-string v3, "XPTRTOKEN_SCHEMEDATA"

    filled-new-array {p1, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fgTokenNames:[Ljava/lang/String;

    const/16 p1, 0x100

    new-array p1, p1, [I

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    const/4 p1, 0x0

    iput p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-string p1, "XPTRTOKEN_OPEN_PAREN"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    const-string v0, "XPTRTOKEN_CLOSE_PAREN"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    const-string v0, "XPTRTOKEN_SHORTHAND"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    const-string v0, "XPTRTOKEN_SCHEMENAME"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    const-string v0, "XPTRTOKEN_SCHEMEDATA"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(I)V

    return-void
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->hasMore()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I

    move-result p0

    return p0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->peekToken()I

    move-result p0

    return p0
.end method

.method private addToken(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    aput p1, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    aput p1, v0, v1

    :goto_0
    iget p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    return-void
.end method

.method private addToken(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(I)V

    return-void
.end method

.method private getTokenString(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private hasMore()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private nextToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v1, "XPointerProcessingError"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0
.end method

.method private nextTokenAsString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I

    move-result v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v2, "XPointerProcessingError"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private peekToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v1, "XPointerProcessingError"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0
.end method

.method private rewind()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    return-void
.end method
