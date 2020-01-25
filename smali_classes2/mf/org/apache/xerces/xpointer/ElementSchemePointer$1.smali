.class Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;
.super Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;
.source "ElementSchemePointer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->parseXPointer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;)V

    return-void
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const-string v2, "InvalidElementSchemeToken"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V

    return-void
.end method
