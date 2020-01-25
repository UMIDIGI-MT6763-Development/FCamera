.class public final Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;
.super Ljava/lang/Object;
.source "XMLDocumentScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PrologDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    const/16 v3, 0x3c

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v5, "ContentIllegalInProlog"

    invoke-virtual {v2, v5, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    :pswitch_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v5, "ReferenceIllegalInProlog"

    invoke-virtual {v2, v5, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v2, v6

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x26

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v2, v6

    goto/16 :goto_3

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v2, v6

    goto/16 :goto_3

    :pswitch_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v7, "DoctypeNotAllowed"

    invoke-virtual {v2, v7, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v7, "AlreadySeenDoctype"

    invoke-virtual {v2, v7, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-boolean v6, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanDoctypeDecl()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v6

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v7, v7, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-eqz v7, :cond_6

    move v7, v0

    goto :goto_0

    :cond_6
    move v7, v6

    :goto_0
    iput-boolean v7, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidation:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v2, :cond_d

    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_8
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x12

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v6

    :cond_9
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$2(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v7, v7, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-eqz v7, :cond_a

    move v7, v0

    goto :goto_1

    :cond_a
    move v7, v6

    :goto_1
    iput-boolean v7, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidation:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v2, :cond_d

    :cond_b
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$2(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {p1, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$3(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x13

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v6

    :cond_d
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanPI()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanComment()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_2

    :pswitch_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v5, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/2addr v5, v6

    iput v5, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x21

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v5, "InvalidCommentStart"

    invoke-virtual {v2, v5, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v2, v6

    goto/16 :goto_3

    :cond_f
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "DOCTYPE"

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v2, v6

    goto :goto_3

    :cond_10
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v5, "MarkupNotRecognizedInProlog"

    invoke-virtual {v2, v5, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_11
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v5

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v6

    :cond_12
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3f

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v2, v6

    goto :goto_3

    :cond_13
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v5

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v6

    :cond_14
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v5, "MarkupNotRecognizedInProlog"

    invoke-virtual {v2, v5, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move v2, v0

    :goto_3
    if-nez p1, :cond_0

    if-nez v2, :cond_0

    if-eqz p1, :cond_16

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result p1

    if-eq p1, v3, :cond_15

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "RootElementRequired"

    invoke-virtual {p1, v2, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_16
    return v6

    :catch_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "PrematureEOF"

    invoke-virtual {p1, v2, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :catch_1
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "CharConversionFailure"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v0

    :catch_2
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

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
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
