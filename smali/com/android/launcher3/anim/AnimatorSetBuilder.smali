.class public Lcom/android/launcher3/anim/AnimatorSetBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mAnims:Ljava/util/ArrayList;

.field private mStartDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mStartDelay:J

    return-void
.end method


# virtual methods
.method public final build()Landroid/animation/AnimatorSet;
    .locals 3

    .line 47
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 49
    iget-wide v1, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 50
    return-object v0
.end method

.method public final play(Landroid/animation/Animator;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method
