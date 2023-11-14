# Server Outage Incident Report
> The Wicked & Bad Studios API Infrastructure Team

![](https://i.kym-cdn.com/entries/icons/original/000/035/412/Card_Declines_banner.jpg)

## Incident Summary:
On November 26, 2023, our Payment Processing API experienced a significant outage, resulting in transaction failures and service unavailability for about 10% of users. The incident originated from a practical bug in the API logic that went unnoticed during the development phase and surfaced in the production environment.

## Timeline (all times Greenwich Meridian Time)
- November 26, 2022, 12:00 AM: Initial reports of API errors detected.
- November 26, 2022, 12:05 AM: Engineering and Operations teams notified.
- November 26, 2022, 12:15 AM: Investigation initiated to identify the root cause.
- November 26, 2022, 12:30 AM: Root cause identified - A pattern of valid transactions being incorrectly rejected by the Payment Processing API.
- November 26, 2022, 1:00 AM: Mitigation plan devised and implemented.
- November 26, 2022, 1:30 AM: Services gradually restored.
- November 26, 2022, 1:45 AM: Full service recovery confirmed.
- November 26, 2022, 1:54 AM: Incident officially closed.

## Root Cause
At 12:00 AM, a new feature logic for the Payment Processing API was pushed to our production environment which introduced a practical bug in the payment verification logic during this update. This bug caused certain valid payment transactions to be erroneously flagged as invalid. The bug remained undetected during the testing phase due to insufficient test coverage for edge cases related to specific payment scenarios. The faulty code was deployed to the production environment during a regular release, introducing the payment verification bug to the live system. As a result of the bug, valid payment transactions were incorrectly rejected, leading to transaction failures for a subset of users. The accumulation of transaction failures quickly led to service unavailability for affected users attempting to make payments.


## Resolution and Recovery
At 12:15 AM, upon detecting a spike in transaction failures, our operations tema initiated an investigation into the root cause. At 1:00 AM, the faulty code was identified, and an emergency code rollback was performed to revert to the previous stable version. Transaction were reprocessed for affected users to ensure accurate payment processing by 1:30 AM and the incident was officially closed by 1:54 AM.

## Corrective and Preventative Measures
To prevent similar incidents in the future, the following measures will be implemented:

- Enhanced Test Coverage:
    - Strengthen test coverage to include comprehensive scenarios, especially edge cases related to payment processing.

- Code Review and Pair Programming:
    - Implement rigorous code review practices, emphasizing pair programming for critical components like payment processing logic. 

- Automated Code Analysis:
    - Introduce automated code analysis tools to identify potential logic errors or bugs during the code review process.

- Rollout Validation:
    - Implement a validation process for code rollouts, ensuring that critical logic changes undergo thorough validation before deployment to production.

![](https://imgb.ifunny.co/images/08302766855c839167680eacf7ff04d9548b47100b7977f28f0f2294597095d9_1.webp)

## Conclusion:
This root cause analysis sheds light on the practical bug in the Payment Processing API logic that led to transaction failures and service unavailability. By implementing the suggested preventive measures, we aim to fortify our development and deployment processes to prevent the recurrence of such incidents in the future.

Sincerely,
The Wicked & Bad Studios API Infrastructure Team