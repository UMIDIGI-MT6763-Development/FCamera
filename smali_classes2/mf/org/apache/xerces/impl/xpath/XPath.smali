.class public Lmf/org/apache/xerces/impl/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/XPath$Axis;,
        Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;,
        Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;,
        Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;,
        Lmf/org/apache/xerces/impl/xpath/XPath$Step;,
        Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;
    }
.end annotation


# static fields
.field private static final DEBUG_ALL:Z = false

.field private static final DEBUG_ANY:Z = false

.field private static final DEBUG_XPATH_PARSE:Z = false


# instance fields
.field protected final fExpression:Ljava/lang/String;

.field protected final fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

.field protected final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {p0, p3}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseExpression(Lmf/org/apache/xerces/xni/NamespaceContext;)[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    return-void
.end method

.method private buildLocationPath(Ljava/util/Vector;)Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    invoke-direct {p1, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;-><init>([Lmf/org/apache/xerces/impl/xpath/XPath$Step;)V

    return-object p1
.end method

.method private static check(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v0, "c-general-xpath"

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v1, p0, v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "# XPath expression: \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/XPath;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v5}, Lmf/org/apache/xerces/impl/xpath/XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "expanded xpath: \""

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseExpression(Lmf/org/apache/xerces/xni/NamespaceContext;)[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    new-instance v6, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v6, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$1;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$1;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath;Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->hasMore()Z

    move-result v5

    if-nez v5, :cond_0

    xor-int/lit8 p1, v4, 0x1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/XPath;->buildLocationPath(Ljava/util/Vector;)Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    return-object p1

    :cond_0
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v5

    const/4 v7, 0x4

    if-eq v5, v7, :cond_4

    const/4 v7, 0x6

    const/4 v8, 0x2

    if-eq v5, v7, :cond_3

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    const/16 v7, 0x8

    packed-switch v5, :pswitch_data_2

    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v4

    if-ne v4, v7, :cond_1

    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    new-instance v5, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v5, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v7

    invoke-direct {p0, v7, v6, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v4, v2

    goto :goto_0

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v0, "c-general-xpath"

    invoke-direct {p1, v0}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v4

    if-ne v4, v7, :cond_2

    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    new-instance v5, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v5, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v7

    invoke-direct {p0, v7, v6, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v4, v2

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v0, "c-general-xpath"

    invoke-direct {p1, v0}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/XPath;->buildLocationPath(Ljava/util/Vector;)Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v0, "c-general-xpath"

    invoke-direct {p1, v0}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    move v4, v3

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    new-instance v7, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v7, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-direct {p0, v5, v6, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v4, v2

    goto/16 :goto_0

    :pswitch_6
    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v0, "c-general-xpath"

    invoke-direct {p1, v0}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    new-instance v5, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v5, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v7

    invoke-direct {p0, v7, v6, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v4, v2

    goto/16 :goto_0

    :cond_4
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    new-instance v8, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {v8, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    new-instance v9, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    invoke-direct {v9, v4, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->hasMore()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->peekToken()I

    move-result v4

    const/16 v8, 0x16

    if-ne v4, v8, :cond_5

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v4, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    new-instance v7, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {v7, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    new-instance v5, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    invoke-direct {v5, v4, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v4, v3

    goto/16 :goto_0

    :cond_5
    move v4, v2

    goto/16 :goto_0

    :cond_6
    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v0, "c-general-xpath"

    invoke-direct {p1, v0}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x23
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string p2, "c-general-xpath"

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextTokenAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v2, :cond_0

    invoke-interface {p3, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v2, :cond_2

    if-eqz p3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string p2, "c-general-xpath-ns"

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/16 p3, 0xa

    if-ne p1, p3, :cond_3

    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {p1, v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextTokenAsString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, p2, :cond_4

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    move-object p2, p1

    :goto_1
    new-instance p3, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2, v0, p1, p2, v1}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p3, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(Lmf/org/apache/xerces/xni/QName;)V

    return-object p3

    :pswitch_1
    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLocationPath()Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    return-object v0
.end method

.method public getLocationPaths()[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return-object v0

    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v1, :cond_1

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
