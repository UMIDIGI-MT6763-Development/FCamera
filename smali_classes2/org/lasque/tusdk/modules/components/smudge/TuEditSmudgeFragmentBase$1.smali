.class Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->handleCompleteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/TuSdkResult;

.field final synthetic b:Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase$1;->b:Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;

    iput-object p2, p0, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase$1;->a:Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase$1;->b:Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase$1;->a:Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method