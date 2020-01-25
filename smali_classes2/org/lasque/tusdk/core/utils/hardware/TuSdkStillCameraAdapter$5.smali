.class Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->captureImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$5;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;)V
    .locals 0

    iget-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$5;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {p2, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Z)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$5;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {p2, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->b(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Z)V

    return-void
.end method
