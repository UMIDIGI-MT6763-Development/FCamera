.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$2;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$2;->a:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$2;->b:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$2;->a:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->doFocusCallback(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

    return-void
.end method
