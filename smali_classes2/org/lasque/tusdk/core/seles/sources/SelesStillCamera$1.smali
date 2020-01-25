.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    invoke-static {p2, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Z)Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$1;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->doFocusCallback(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

    return-void
.end method
