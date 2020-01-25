.class Lorg/lasque/tusdk/core/task/FiltersTaskBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/task/FiltersTaskBase;->asyncBuildWithFilterName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;

.field final synthetic b:Lorg/lasque/tusdk/core/task/FiltersTaskBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/task/FiltersTaskBase;Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase$2;->b:Lorg/lasque/tusdk/core/task/FiltersTaskBase;

    iput-object p2, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase$2;->a:Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase$2;->b:Lorg/lasque/tusdk/core/task/FiltersTaskBase;

    iget-object v1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase$2;->a:Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->a(Lorg/lasque/tusdk/core/task/FiltersTaskBase;Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;)V

    return-void
.end method
