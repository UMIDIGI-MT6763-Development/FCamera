.class public Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# instance fields
.field private final a:Ljava/nio/FloatBuffer;

.field protected mFilterInputTextureUniform2:I

.field protected mFilterSecondTextureCoordinateAttribute:I

.field protected mFirstFrameCheckDisabled:Z

.field protected mFirstFrameWasVideo:Z

.field protected mHasReceivedFirstFrame:Z

.field protected mHasReceivedSecondFrame:Z

.field protected mHasSetFirstTexture:Z

.field protected mInputRotation2:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field protected mSecondFrameCheckDisabled:Z

.field protected mSecondFrameWasVideo:Z

.field protected mSecondInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputTextureCoordinate2;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n}"

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mInputRotation2:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasSetFirstTexture:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasReceivedFirstFrame:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasReceivedSecondFrame:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFirstFrameWasVideo:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mSecondFrameWasVideo:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFirstFrameCheckDisabled:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mSecondFrameCheckDisabled:Z

    sget-object p1, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->noRotationTextureCoordinates:[F

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->a:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public disableFirstFrameCheck()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFirstFrameCheckDisabled:Z

    return-void
.end method

.method public disableSecondFrameCheck()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mSecondFrameCheckDisabled:Z

    return-void
.end method

.method protected getRotationLast()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mInputRotation2:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object v0
.end method

.method protected getRotationWithIndex(I)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->getRotationLast()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p1

    return-object p1
.end method

.method protected initializeAttributes()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->initializeAttributes()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate2"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    return-void
.end method

.method protected inputFramebufferBindTexture()V
    .locals 8

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->inputFramebufferBindTexture()V

    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mSecondInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result v0

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFilterInputTextureUniform2:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->a:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mInputRotation2:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->textureCoordinates(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFilterSecondTextureCoordinateAttribute:I

    iget-object v7, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->a:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method protected inputFramebufferUnlock()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->inputFramebufferUnlock()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mSecondInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    return-void
.end method

.method public newFrameReady(JI)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->receivedFrames()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->receivedFrame(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->receivedFramesCheck()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->receivedFrames()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->newFrameReady(JI)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->receivedFramesResume()V

    :cond_1
    return-void
.end method

.method public nextAvailableTextureIndex()I
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasSetFirstTexture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate2"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFilterSecondTextureCoordinateAttribute:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputImageTexture2"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFilterInputTextureUniform2:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFilterSecondTextureCoordinateAttribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method protected receivedFrame(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasReceivedFirstFrame:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->receivedFrameLast()V

    :goto_0
    return-void
.end method

.method protected receivedFrameLast()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasReceivedSecondFrame:Z

    return-void
.end method

.method protected receivedFrames()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasReceivedFirstFrame:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasReceivedSecondFrame:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected receivedFramesCheck()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFirstFrameCheckDisabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasReceivedFirstFrame:Z

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mSecondFrameCheckDisabled:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasReceivedSecondFrame:Z

    :cond_1
    return-void
.end method

.method protected receivedFramesResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasReceivedFirstFrame:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasReceivedSecondFrame:Z

    return-void
.end method

.method public rotatedSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->getRotationWithIndex(I)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p2

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iput p2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_1
    return-object v0
.end method

.method public setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasSetFirstTexture:Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->lock()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputFramebufferLast(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)V

    :goto_0
    return-void
.end method

.method protected setInputFramebufferLast(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mSecondInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mSecondInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->lock()V

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 0

    if-nez p2, :cond_0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputRotationLast(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    :goto_0
    return-void
.end method

.method protected setInputRotationLast(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mInputRotation2:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 0

    if-nez p2, :cond_1

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->mHasSetFirstTexture:Z

    :cond_1
    return-void
.end method
