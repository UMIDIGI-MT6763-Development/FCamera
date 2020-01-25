.class public interface abstract Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/SelesContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelesInput"
.end annotation


# virtual methods
.method public abstract endProcessing()V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isShouldIgnoreUpdatesToThisTarget()Z
.end method

.method public abstract maximumOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
.end method

.method public abstract mountAtGLThread(Ljava/lang/Runnable;)V
.end method

.method public abstract newFrameReady(JI)V
.end method

.method public abstract nextAvailableTextureIndex()I
.end method

.method public abstract setCurrentlyReceivingMonochromeInput(Z)V
.end method

.method public abstract setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V
.end method

.method public abstract setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
.end method

.method public abstract setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
.end method

.method public abstract wantsMonochromeInput()Z
.end method
