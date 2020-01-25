.class public final Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;
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
    name = "TrailingMiscDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

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
    const/16 v0, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    const/4 v4, 0x7

    const/16 v5, 0xc

    const/4 v6, 0x1

    if-eq v3, v5, :cond_9

    if-eq v3, v0, :cond_8

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v4, "ReferenceIllegalInTrailingMisc"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    return v1

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v4, "ContentIllegalInTrailingMisc"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanPI()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v4, "InvalidCommentStart"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanComment()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v5, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/2addr v5, v6

    iput v5, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3f

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v1, v6

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x21

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v1, v6

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v4, "MarkupNotRecognizedInMisc"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v6

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v5, "MarkupNotRecognizedInMisc"

    invoke-virtual {v3, v5, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanStartElement()Z

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v5, "MarkupNotRecognizedInMisc"

    invoke-virtual {v3, v5, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanStartElement()Z

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v4, "MarkupNotRecognizedInMisc"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    return v1

    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3c

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3, v6}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v1, v6

    goto :goto_0

    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v6

    :goto_0
    if-nez p1, :cond_0

    if-nez v1, :cond_0

    return v6

    :catch_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget p1, p1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    if-eqz p1, :cond_b

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v0, "PrematureEOF"

    invoke-virtual {p1, v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_b
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    return v1

    :catch_1
    move-exception p1

    move-object v7, p1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "CharConversionFailure"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v1

    :catch_2
    move-exception p1

    move-object v7, p1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
