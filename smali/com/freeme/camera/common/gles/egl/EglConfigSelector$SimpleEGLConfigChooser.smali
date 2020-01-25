.class Lcom/freeme/camera/common/gles/egl/EglConfigSelector$SimpleEGLConfigChooser;
.super Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;
.source "EglConfigSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/gles/egl/EglConfigSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;)V
    .locals 8

    iput-object p1, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$SimpleEGLConfigChooser;->this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;-><init>(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;IIIIII)V

    return-void
.end method
