.class public Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FragmentContentDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "<?xml"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/2addr v2, v4

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameChar(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    const-string v2, "xml"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNCName(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v2

    iget-object v2, v2, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v5

    iget v5, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v6}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v6

    iget v6, v6, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v1, v2, v5, v6}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v1, v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanXMLDeclOrTextDecl(Z)V

    :cond_5
    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-boolean v4, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanCDATASection(Z)Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/2addr v2, v4

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanCharReference()V

    goto/16 :goto_5

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanEntityReference()V

    goto/16 :goto_5

    :pswitch_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    move v0, v4

    goto/16 :goto_5

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x26

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    const/16 v6, 0x8

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    move v0, v4

    goto/16 :goto_5

    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanContent()I

    move-result v1

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_5

    :cond_9
    if-ne v1, v5, :cond_a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_5

    :cond_a
    const/4 v7, -0x1

    if-eq v1, v7, :cond_c

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v7, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isInvalidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v7}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v7}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v7

    invoke-interface {v1, v7, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_4

    :cond_b
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v8, "InvalidCharInContent"

    new-array v9, v4, [Ljava/lang/Object;

    const/16 v10, 0x10

    invoke-static {v1, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-virtual {v7, v8, v9}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    :cond_c
    :goto_4
    if-nez p1, :cond_8

    goto/16 :goto_5

    :pswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->scanRootElementHook()Z

    move-result v1

    if-eqz v1, :cond_d

    return v4

    :cond_d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v5, "DoctypeIllegalInContent"

    invoke-virtual {v1, v5, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_5

    :pswitch_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanPI()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_5

    :pswitch_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanComment()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_5

    :pswitch_9
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v5, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/2addr v5, v4

    iput v5, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanEndElement()I

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->elementDepthIsZeroHook()Z

    move-result v1

    if-eqz v1, :cond_e

    return v4

    :cond_e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_5

    :cond_f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v5

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartChar(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanStartElement()Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_5

    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x21

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v3, "InvalidCommentStart"

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    move v0, v4

    goto :goto_5

    :cond_12
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "[CDATA["

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    move v0, v4

    goto :goto_5

    :cond_13
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->scanForDoctypeHook()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v3, "MarkupNotRecognizedInContent"

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_14
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3f

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    move v0, v4

    goto :goto_5

    :cond_15
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v5

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanStartElement()Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_5

    :cond_16
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v5, "MarkupNotRecognizedInContent"

    invoke-virtual {v1, v5, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_17
    :goto_5
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    return v4

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->endOfFileHook(Ljava/io/EOFException;)V

    return v0

    :catch_1
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "CharConversionFailure"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v0

    :catch_2
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected elementDepthIsZeroHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected endOfFileHook(Ljava/io/EOFException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget p1, p1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v0, "PrematureEOF"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected scanForDoctypeHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected scanRootElementHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
