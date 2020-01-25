.class public Lorg/lasque/tusdk/core/view/TuSdkSurfaceView;
.super Landroid/opengl/GLSurfaceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/TuSdkSurfaceView$CameraSurfaceViewDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/TuSdkSurfaceView$CameraSurfaceViewDelegate;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isCreated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkSurfaceView;->b:Z

    return v0
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/view/TuSdkSurfaceView$CameraSurfaceViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkSurfaceView;->a:Lorg/lasque/tusdk/core/view/TuSdkSurfaceView$CameraSurfaceViewDelegate;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkSurfaceView;->a:Lorg/lasque/tusdk/core/view/TuSdkSurfaceView$CameraSurfaceViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/view/TuSdkSurfaceView$CameraSurfaceViewDelegate;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/TuSdkSurfaceView;->b:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkSurfaceView;->b:Z

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method
