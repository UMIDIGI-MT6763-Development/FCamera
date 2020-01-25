.class Lorg/lasque/tusdk/impl/activity/TuComponentFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->notifyError(Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/TuSdkResult;

.field final synthetic b:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

.field final synthetic c:Lorg/lasque/tusdk/impl/activity/TuComponentFragment;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/activity/TuComponentFragment;Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$1;->c:Lorg/lasque/tusdk/impl/activity/TuComponentFragment;

    iput-object p2, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$1;->a:Lorg/lasque/tusdk/core/TuSdkResult;

    iput-object p3, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$1;->b:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$1;->c:Lorg/lasque/tusdk/impl/activity/TuComponentFragment;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$1;->a:Lorg/lasque/tusdk/core/TuSdkResult;

    iget-object v2, p0, Lorg/lasque/tusdk/impl/activity/TuComponentFragment$1;->b:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->notifyError(Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V

    return-void
.end method
