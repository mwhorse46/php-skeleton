<?php

declare(strict_types=1);

namespace PhpSkeleton\Tests;

use PhpSkeleton\Sample;
use PHPUnit\Framework\TestCase;

class SampleTest extends TestCase
{
    public function testSample(): void
    {
        $this->assertSame(3, Sample::sum(1, 2));
    }
}
