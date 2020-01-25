.class Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;
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

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->b(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)V

    return-void
.end method
