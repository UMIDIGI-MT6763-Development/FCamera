.class Lcom/baidu/platform/comapi/search/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "c"


# instance fields
.field private b:Lcom/baidu/platform/comapi/search/b;

.field private c:Lcom/baidu/platform/comapi/search/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    iput-object v0, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/16 v1, 0xb

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v2, :cond_6

    const/16 v0, 0x6c

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v2, :cond_6

    const/16 v0, 0x64

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x69

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v1, :cond_5

    const/16 v0, 0x6a

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v1, :cond_5

    const/16 v0, 0xc8

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v1, :cond_5

    const/16 v0, 0xe6

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/16 v1, 0x6b

    if-ne v1, v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->a(I)V

    goto :goto_2

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    const/16 v0, 0x1f4

    invoke-interface {p1, v0}, Lcom/baidu/platform/comapi/search/b;->a(I)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {p1, v1}, Lcom/baidu/platform/comapi/search/b;->a(I)V

    :goto_2
    return-void

    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_a

    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->f(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {p1, v2}, Lcom/baidu/platform/comapi/search/b;->f(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    const/16 v0, 0x1fa

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->k(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {p1, v2}, Lcom/baidu/platform/comapi/search/b;->k(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->e(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_c
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {p1, v2}, Lcom/baidu/platform/comapi/search/b;->e(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->d(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    :cond_d
    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_5
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->i(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_f
    :goto_5
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {p1, v2}, Lcom/baidu/platform/comapi/search/b;->i(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_6
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_5

    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->g(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_11
    :goto_6
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {p1, v2}, Lcom/baidu/platform/comapi/search/b;->g(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_8
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->c(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_13
    :goto_7
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {p1, v2}, Lcom/baidu/platform/comapi/search/b;->c(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_9
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->j(Ljava/lang/String;)V

    goto :goto_a

    :cond_15
    :goto_8
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {p1, v2}, Lcom/baidu/platform/comapi/search/b;->j(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->h(Ljava/lang/String;)V

    goto :goto_a

    :cond_16
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {p1, v2}, Lcom/baidu/platform/comapi/search/b;->h(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_b
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_17
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {p1, v2}, Lcom/baidu/platform/comapi/search/b;->a(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_c
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/search/d;->b(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_9

    :cond_18
    iget-object v0, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/search/b;->b(Ljava/lang/String;)V

    goto :goto_a

    :cond_19
    :goto_9
    iget-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    invoke-interface {p1, v2}, Lcom/baidu/platform/comapi/search/b;->b(Ljava/lang/String;)V

    :cond_1a
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_c
        0xb -> :sswitch_b
        0xe -> :sswitch_a
        0x12 -> :sswitch_9
        0x15 -> :sswitch_b
        0x17 -> :sswitch_8
        0x1f -> :sswitch_7
        0x23 -> :sswitch_6
        0x2c -> :sswitch_5
        0x2d -> :sswitch_4
        0x2e -> :sswitch_3
        0x1f4 -> :sswitch_2
        0x1fa -> :sswitch_1
        0x321 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/baidu/platform/comapi/search/b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/search/c;->b:Lcom/baidu/platform/comapi/search/b;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/search/d;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/search/c;->c:Lcom/baidu/platform/comapi/search/d;

    return-void
.end method
